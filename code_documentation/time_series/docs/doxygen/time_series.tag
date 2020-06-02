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
    <name>time_series::internal::ConditionVariable</name>
    <filename>classtime__series_1_1internal_1_1ConditionVariable.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>time_series::internal::ConditionVariable&lt; MultiProcesses &gt;</name>
    <filename>classtime__series_1_1internal_1_1ConditionVariable_3_01MultiProcesses_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>time_series::internal::ConditionVariable&lt; SingleProcess &gt;</name>
    <filename>classtime__series_1_1internal_1_1ConditionVariable_3_01SingleProcess_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Lock</name>
    <filename>classtime__series_1_1internal_1_1Lock.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Lock&lt; MultiProcesses &gt;</name>
    <filename>classtime__series_1_1internal_1_1Lock_3_01MultiProcesses_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Lock&lt; SingleProcess &gt;</name>
    <filename>classtime__series_1_1internal_1_1Lock_3_01SingleProcess_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>time_series::MultiprocessTimeSeries</name>
    <filename>classtime__series_1_1MultiprocessTimeSeries.html</filename>
    <templarg></templarg>
    <base>TimeSeriesBase&lt; internal::MultiProcesses, T &gt;</base>
    <member kind="function">
      <type></type>
      <name>MultiprocessTimeSeries</name>
      <anchorfile>classtime__series_1_1MultiprocessTimeSeries.html</anchorfile>
      <anchor>a118890497b42365a56221c66edbb478e</anchor>
      <arglist>(std::string segment_id, size_t max_length, bool leader=true, Index start_timeindex=0)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Mutex</name>
    <filename>classtime__series_1_1internal_1_1Mutex.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Mutex&lt; MultiProcesses &gt;</name>
    <filename>classtime__series_1_1internal_1_1Mutex_3_01MultiProcesses_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Mutex&lt; SingleProcess &gt;</name>
    <filename>classtime__series_1_1internal_1_1Mutex_3_01SingleProcess_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>time_series::TimeSeries</name>
    <filename>classtime__series_1_1TimeSeries.html</filename>
    <templarg></templarg>
    <base>TimeSeriesBase&lt; internal::SingleProcess, T &gt;</base>
  </compound>
  <compound kind="class">
    <name>time_series::internal::TimeSeriesBase</name>
    <filename>classtime__series_1_1internal_1_1TimeSeriesBase.html</filename>
    <templarg>P</templarg>
    <templarg>T</templarg>
    <base>time_series::TimeSeriesInterface</base>
    <member kind="function">
      <type>Index</type>
      <name>newest_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ae0a1c969dce12c09454451eb74f01983</anchor>
      <arglist>(bool wait=true)</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>count_appended_elements</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a1e384606bee9664d05803f33235a0d60</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>oldest_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a4e6a5b253566c71972a9470bb33c7d8a</anchor>
      <arglist>(bool wait=false)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>newest_element</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a12bd405933d326fd8396fb2bc1267223</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator[]</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aa7267458e4fadff7314037a4bd1d53bb</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Timestamp</type>
      <name>timestamp_ms</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a1e4c7ca710bb14e7dce57a1dd9c4f929</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Timestamp</type>
      <name>timestamp_s</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aacca694af4c53fa4ae9cd3593c12bf58</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>wait_for_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a5651e522492514408e38a5b99e144a06</anchor>
      <arglist>(const Index &amp;timeindex, const double &amp;max_duration_s=std::numeric_limits&lt; double &gt;::quiet_NaN())</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>length</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ae6da9bd31ca06b30413f2073bc2e48e6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>max_length</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aee1bf636a094a3068f9de731688c3972</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>has_changed_since_tag</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a38511cb227e3e423922eaaea626a15ee</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tag</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ad20c1f90dd2f9016f32132caa3f976f7</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>tagged_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>adadeeff6e42776853e26aa5f74264909</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>append</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a09293ae95cdc492e7de78729b0e0e398</anchor>
      <arglist>(const T &amp;element)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_empty</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>acc3fa7fbde0873597358b70d41b7dbd2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>monitor_signal</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>adac95950208bcb190556db4b8b42cbf0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private" static="yes">
      <type>static void</type>
      <name>throw_if_sigint_received</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a5033638ac101e5dde69400ff9dcd5fd3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>std::atomic&lt; bool &gt;</type>
      <name>is_destructor_called_</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>af341bff555b4e5881ae8426b0e5e9b30</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>TimeSeriesBase&lt; internal::MultiProcesses, T &gt;</name>
    <filename>classtime__series_1_1internal_1_1TimeSeriesBase.html</filename>
    <base>time_series::TimeSeriesInterface</base>
    <member kind="function">
      <type>Index</type>
      <name>newest_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ae0a1c969dce12c09454451eb74f01983</anchor>
      <arglist>(bool wait=true)</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>count_appended_elements</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a1e384606bee9664d05803f33235a0d60</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>oldest_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a4e6a5b253566c71972a9470bb33c7d8a</anchor>
      <arglist>(bool wait=false)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>newest_element</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a12bd405933d326fd8396fb2bc1267223</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator[]</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aa7267458e4fadff7314037a4bd1d53bb</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Timestamp</type>
      <name>timestamp_ms</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a1e4c7ca710bb14e7dce57a1dd9c4f929</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Timestamp</type>
      <name>timestamp_s</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aacca694af4c53fa4ae9cd3593c12bf58</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>wait_for_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a5651e522492514408e38a5b99e144a06</anchor>
      <arglist>(const Index &amp;timeindex, const double &amp;max_duration_s=std::numeric_limits&lt; double &gt;::quiet_NaN())</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>length</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ae6da9bd31ca06b30413f2073bc2e48e6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>max_length</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aee1bf636a094a3068f9de731688c3972</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>has_changed_since_tag</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a38511cb227e3e423922eaaea626a15ee</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tag</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ad20c1f90dd2f9016f32132caa3f976f7</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>tagged_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>adadeeff6e42776853e26aa5f74264909</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>append</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a09293ae95cdc492e7de78729b0e0e398</anchor>
      <arglist>(const T &amp;element)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_empty</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>acc3fa7fbde0873597358b70d41b7dbd2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>monitor_signal</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>adac95950208bcb190556db4b8b42cbf0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private" static="yes">
      <type>static void</type>
      <name>throw_if_sigint_received</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a5033638ac101e5dde69400ff9dcd5fd3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>std::atomic&lt; bool &gt;</type>
      <name>is_destructor_called_</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>af341bff555b4e5881ae8426b0e5e9b30</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>TimeSeriesBase&lt; internal::SingleProcess, T &gt;</name>
    <filename>classtime__series_1_1internal_1_1TimeSeriesBase.html</filename>
    <base>time_series::TimeSeriesInterface</base>
    <member kind="function">
      <type>Index</type>
      <name>newest_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ae0a1c969dce12c09454451eb74f01983</anchor>
      <arglist>(bool wait=true)</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>count_appended_elements</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a1e384606bee9664d05803f33235a0d60</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>oldest_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a4e6a5b253566c71972a9470bb33c7d8a</anchor>
      <arglist>(bool wait=false)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>newest_element</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a12bd405933d326fd8396fb2bc1267223</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator[]</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aa7267458e4fadff7314037a4bd1d53bb</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Timestamp</type>
      <name>timestamp_ms</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a1e4c7ca710bb14e7dce57a1dd9c4f929</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Timestamp</type>
      <name>timestamp_s</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aacca694af4c53fa4ae9cd3593c12bf58</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>wait_for_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a5651e522492514408e38a5b99e144a06</anchor>
      <arglist>(const Index &amp;timeindex, const double &amp;max_duration_s=std::numeric_limits&lt; double &gt;::quiet_NaN())</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>length</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ae6da9bd31ca06b30413f2073bc2e48e6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>max_length</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>aee1bf636a094a3068f9de731688c3972</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>has_changed_since_tag</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a38511cb227e3e423922eaaea626a15ee</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>tag</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>ad20c1f90dd2f9016f32132caa3f976f7</anchor>
      <arglist>(const Index &amp;timeindex)</arglist>
    </member>
    <member kind="function">
      <type>Index</type>
      <name>tagged_timeindex</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>adadeeff6e42776853e26aa5f74264909</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>append</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a09293ae95cdc492e7de78729b0e0e398</anchor>
      <arglist>(const T &amp;element)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_empty</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>acc3fa7fbde0873597358b70d41b7dbd2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>monitor_signal</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>adac95950208bcb190556db4b8b42cbf0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private" static="yes">
      <type>static void</type>
      <name>throw_if_sigint_received</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>a5033638ac101e5dde69400ff9dcd5fd3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>std::atomic&lt; bool &gt;</type>
      <name>is_destructor_called_</name>
      <anchorfile>classtime__series_1_1internal_1_1TimeSeriesBase.html</anchorfile>
      <anchor>af341bff555b4e5881ae8426b0e5e9b30</anchor>
      <arglist></arglist>
    </member>
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
  <compound kind="class">
    <name>time_series::internal::Vector</name>
    <filename>classtime__series_1_1internal_1_1Vector.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Vector&lt; MultiProcesses, T &gt;</name>
    <filename>classtime__series_1_1internal_1_1Vector_3_01MultiProcesses_00_01T_01_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>time_series::internal::Vector&lt; SingleProcess, T &gt;</name>
    <filename>classtime__series_1_1internal_1_1Vector_3_01SingleProcess_00_01T_01_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="page">
    <name>md_readme</name>
    <title>Time Series</title>
    <filename>md_readme</filename>
  </compound>
</tagfile>
