<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>demo_multiprocess_read.cpp</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/time_series/demos/</path>
    <filename>demo__multiprocess__read_8cpp</filename>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>demo__multiprocess__read_8cpp.html</anchorfile>
      <anchor>a13a43e6d814de94978c515cb084873b1</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>demo_multiprocess_write.cpp</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/time_series/demos/</path>
    <filename>demo__multiprocess__write_8cpp</filename>
  </compound>
  <compound kind="file">
    <name>demo_time_series.cpp</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/time_series/demos/</path>
    <filename>demo__time__series_8cpp</filename>
    <includes id="time__series_8hpp" name="time_series.hpp" local="yes" imported="no">time_series/time_series.hpp</includes>
    <member kind="function">
      <type>void *</type>
      <name>producer</name>
      <anchorfile>demo__time__series_8cpp.html</anchorfile>
      <anchor>a518842da1ba4ef4ba8c7f57fd9731cfc</anchor>
      <arglist>(void *args)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>demo__time__series_8cpp.html</anchorfile>
      <anchor>a13a43e6d814de94978c515cb084873b1</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>interface.hpp</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/time_series/include/time_series/</path>
    <filename>interface_8hpp</filename>
    <class kind="class">time_series::TimeSeriesInterface</class>
  </compound>
  <compound kind="file">
    <name>time_series.hpp</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/time_series/include/time_series/</path>
    <filename>time__series_8hpp</filename>
    <includes id="interface_8hpp" name="interface.hpp" local="yes" imported="no">time_series/interface.hpp</includes>
    <class kind="class">time_series::TimeSeries</class>
  </compound>
  <compound kind="class">
    <name>time_series::MultiprocessTimeSeries</name>
    <filename>classtime__series_1_1MultiprocessTimeSeries.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type></type>
      <name>MultiprocessTimeSeries</name>
      <anchorfile>classtime__series_1_1MultiprocessTimeSeries.html</anchorfile>
      <anchor>a118890497b42365a56221c66edbb478e</anchor>
      <arglist>(std::string segment_id, size_t max_length, bool leader=true, Index start_timeindex=0)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>time_series::TimeSeries</name>
    <filename>classtime__series_1_1TimeSeries.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>time_series::TimeSeriesInterface</name>
    <filename>classtime__series_1_1TimeSeriesInterface.html</filename>
    <templarg></templarg>
    <member kind="function" virtualness="pure">
      <type>virtual Index</type>
      <name>newest_timeindex</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a19127d715b58f95c0e2581576fe80f18</anchor>
      <arglist>(bool wait=true)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual Index</type>
      <name>count_appended_elements</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a46cf7fc73adfcc400fbf40c22aa7268f</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual Index</type>
      <name>oldest_timeindex</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a3a68de9ecf8bfeb6c05ea89386537307</anchor>
      <arglist>(bool wait=true)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual T</type>
      <name>newest_element</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>ad3b66b6b5f0f763d440731c50e41b4cb</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual T</type>
      <name>operator[]</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a3149f64961e08315eb06798d0f075333</anchor>
      <arglist>(const Index &amp;timeindex)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual Timestamp</type>
      <name>timestamp_ms</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>aaeb745c8c13170a645b25170f0b035f1</anchor>
      <arglist>(const Index &amp;timeindex)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual Timestamp</type>
      <name>timestamp_s</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>acfb468e6e1766fe4b566189d3b888e4d</anchor>
      <arglist>(const Index &amp;timeindex)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>wait_for_timeindex</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>aa09c55259a1f34491b5ecdd1505ffdbf</anchor>
      <arglist>(const Index &amp;timeindex, const double &amp;max_duration_s=std::numeric_limits&lt; double &gt;::quiet_NaN())=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual std::size_t</type>
      <name>length</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a90f6ed15d82006dbc7ef7783d9f6ff7a</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual std::size_t</type>
      <name>max_length</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>aded8927e82c060aa3367f17dfd59a8ec</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>has_changed_since_tag</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a2758b463ea41393a24ea37ccd0f5feb4</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>tag</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a34e881c9496901127baf1d907d7399ac</anchor>
      <arglist>(const Index &amp;timeindex)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual Index</type>
      <name>tagged_timeindex</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>aa71ab509ac29c5da681aee9dbf65f2d8</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>append</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a0782c522287cf041fc253529b61041f9</anchor>
      <arglist>(const T &amp;element)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>is_empty</name>
      <anchorfile>classtime__series_1_1TimeSeriesInterface.html</anchorfile>
      <anchor>a932e891f3f41781af4282ada18f05d31</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>md_readme</name>
    <title>Time Series</title>
    <filename>md_readme</filename>
  </compound>
</tagfile>
