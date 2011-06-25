require 'test/unit'
require 'time'
require 'RRD'

class TestRRD < Test::Unit::TestCase
  def setup
    @rrd_file   = 'test.rrd'
    @png_file   = "#{File.basename(@rrd_file, '.rrd')}.png"
    @start_time = 1295046000
    @end_time   = @start_time + 300 * 300
  end

  def teardown
    File.unlink(@rrd_file) if File.exist?(@rrd_file)
    File.unlink(@png_file) if File.exist?(@png_file)
  end

  def test_rrd_manipulation
    assert_nothing_raised do
      RRD.create(
        @rrd_file,
        "--start", "#{@start_time - 1}",
        "--step", "300",
        "DS:a:GAUGE:600:U:U",
        "DS:b:GAUGE:600:U:U",
        "RRA:AVERAGE:0.5:1:300"
      )
    end

    assert_nothing_raised do
      @start_time.step(@end_time, 300) do |i|
        RRD.update(@rrd_file, "#{i}:#{rand(100)}:#{Math.sin(i / 800) * 50 + 50}")
      end
    end


    (fstart, fend, data) = RRD.fetch(@rrd_file, "--start", @start_time.to_s, "--end",
                                     @end_time.to_s, "AVERAGE")

    assert_equal(1295046000, fstart)
    assert_equal(1295136300, fend)
    assert_equal(['a', 'b'], data)

    assert_nothing_raised do
      RRD.graph(
        @png_file,
        "--title", " RubyRRD Demo",
        "--start", "#{@start_time + 3600}",
        "--end", "start + 1000 min",
        "--interlace",
        "--imgformat", "PNG",
        "--width=450",
        "DEF:a=#{@rrd_file}:a:AVERAGE",
        "DEF:b=#{@rrd_file}:b:AVERAGE",
        "CDEF:line=TIME,2400,%,300,LT,a,UNKN,IF",
        "AREA:b#00b6e4:beta",
        "AREA:line#0022e9:alpha",
        "LINE3:line#ff0000"
      )
    end
    assert(File.exist?(@png_file))

    assert_equal(@end_time, RRD.last(@rrd_file).to_i)

    if RRD.respond_to?(:xport)
      assert_nothing_raised do
        fstart, fend, step, col, legend, data = RRD.xport(
          "--start", @start_time.to_s,
          "--end", (@start_time + 300 * 300).to_s,
          "--step", 10.to_s,
          "DEF:A=#{@rrd_file}:a:AVERAGE",
          "DEF:B=#{@rrd_file}:b:AVERAGE",
          "XPORT:A:a",
          "XPORT:B:b"
        )
      end
    end
  end
end
