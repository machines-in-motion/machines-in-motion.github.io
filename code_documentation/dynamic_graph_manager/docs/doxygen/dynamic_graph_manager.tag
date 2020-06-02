<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>main.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/demos/</path>
    <filename>main_8cpp</filename>
    <includes id="simple__dgm_8hpp" name="simple_dgm.hpp" local="yes" imported="no">simple_dgm.hpp</includes>
  </compound>
  <compound kind="file">
    <name>simple_dgm.hpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/demos/</path>
    <filename>simple__dgm_8hpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="yes" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="dynamic__graph__manager_8hh" name="dynamic_graph_manager.hh" local="yes" imported="no">dynamic_graph_manager/dynamic_graph_manager.hh</includes>
    <class kind="class">dynamic_graph_manager::SimpleDGM</class>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>device.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/</path>
    <filename>device_8hh</filename>
    <includes id="periodic-call_8hh" name="periodic-call.hh" local="no" imported="no">dynamic_graph_manager/periodic-call.hh</includes>
    <includes id="tools_8hh" name="tools.hh" local="no" imported="no">dynamic_graph_manager/tools.hh</includes>
    <class kind="class">dynamic_graph::Device</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>device_simulator.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/</path>
    <filename>device__simulator_8hh</filename>
    <includes id="device_8hh" name="device.hh" local="no" imported="no">dynamic_graph_manager/device.hh</includes>
    <class kind="class">dynamic_graph::DeviceSimulator</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>dynamic_graph_manager.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/</path>
    <filename>dynamic__graph__manager_8hh</filename>
    <includes id="ros__interpreter_8hh" name="ros_interpreter.hh" local="yes" imported="no">dynamic_graph_manager/ros_interpreter.hh</includes>
    <includes id="tools_8hh" name="tools.hh" local="yes" imported="no">dynamic_graph_manager/tools.hh</includes>
    <includes id="device_8hh" name="device.hh" local="yes" imported="no">dynamic_graph_manager/device.hh</includes>
    <class kind="class">dynamic_graph::DynamicGraphManager</class>
    <namespace>dynamic_graph</namespace>
    <member kind="typedef">
      <type>std::chrono::steady_clock</type>
      <name>clock</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>aca70acb5331a18e090e49b3d85290a7e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>exception-abstract.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-abstract_8hh</filename>
    <class kind="class">dynamic_graph::ExceptionAbstract</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-dynamic.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-dynamic_8hh</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <class kind="class">dynamic_graph::ExceptionDynamic</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-factory.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-factory_8hh</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <class kind="class">dynamic_graph::ExceptionFactory</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-feature.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-feature_8hh</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <class kind="class">dynamic_graph::ExceptionFeature</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-signal.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-signal_8hh</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <class kind="class">dynamic_graph::ExceptionSignal</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-task.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-task_8hh</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <class kind="class">dynamic_graph::ExceptionTask</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-tools.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-tools_8hh</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <class kind="class">dynamic_graph::ExceptionTools</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-yaml-cpp.hpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/exception/</path>
    <filename>exception-yaml-cpp_8hpp</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <class kind="class">dynamic_graph::ExceptionYamlCpp</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>periodic-call.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/</path>
    <filename>periodic-call_8hh</filename>
    <class kind="class">dynamic_graph::PeriodicCall</class>
    <class kind="struct">dynamic_graph::PeriodicCall::SignalToCall</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_init.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/</path>
    <filename>ros__init_8hh</filename>
    <class kind="struct">dynamic_graph::GlobalRos</class>
    <namespace>dynamic_graph</namespace>
    <member kind="function">
      <type>ros::NodeHandle &amp;</type>
      <name>ros_init</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ab01ece41a91a029cf335e28548cdfc06</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>ros::AsyncSpinner &amp;</type>
      <name>ros_spinner</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a0ab97e95b56e05d30fd3112f8dfcf8eb</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ros_shutdown</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a0a7d6cd6c123bd1852af188fc06ce4f7</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ros_shutdown</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a7d2045abc7e02fe4ee746c5cbb937b04</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ros_exist</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ab000cd6e1e6ed365a5a3e1adddf89dff</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ros_interpreter.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/</path>
    <filename>ros__interpreter_8hh</filename>
    <class kind="class">dynamic_graph::RosPythonInterpreter</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>tools.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/dynamic_graph_manager/</path>
    <filename>tools_8hh</filename>
    <namespace>dynamic_graph</namespace>
    <member kind="typedef">
      <type>std::map&lt; std::string, dynamicgraph::Vector &gt;</type>
      <name>VectorDGMap</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a51212ed7fa4ae81e7b362a27f09b7ab8</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_yaml_node</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a3473e2d5502f8a2bff6b43cbc2d35e07</anchor>
      <arglist>(const YAML::Node &amp;sensors_and_controls, VectorDGMap &amp;out_sensors_map, VectorDGMap &amp;out_motor_controls_map)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>converter.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>converter_8hh</filename>
    <includes id="dg__to__ros_8hh" name="dg_to_ros.hh" local="yes" imported="no">dg_to_ros.hh</includes>
    <namespace>dynamic_graph</namespace>
    <member kind="define">
      <type>#define</type>
      <name>DG_BRIDGE_TO_ROS_MAKE_STAMPED_IMPL</name>
      <anchorfile>converter_8hh.html</anchorfile>
      <anchor>ae02c25236f7cecbfbdbf9cc9239cb785</anchor>
      <arglist>(T, ATTRIBUTE, EXTRA)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DG_BRIDGE_MAKE_SHPTR_IMPL</name>
      <anchorfile>converter_8hh.html</anchorfile>
      <anchor>a9de018e745b4235be09aaab744557770</anchor>
      <arglist>(T)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DG_BRIDGE_MAKE_STAMPED_IMPL</name>
      <anchorfile>converter_8hh.html</anchorfile>
      <anchor>a9ecac683e8b5794b8717b7d2d18c8b22</anchor>
      <arglist>(T, ATTRIBUTE, EXTRA)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DG_BRIDGE_MAKE_STAMPED_SHPTR_IMPL</name>
      <anchorfile>converter_8hh.html</anchorfile>
      <anchor>a2c8d741da8bc5978c852fb7b71ec26e7</anchor>
      <arglist>(T, ATTRIBUTE, EXTRA)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>converter</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>aa00932c9efb8a607efd6997386d78680</anchor>
      <arglist>(D &amp;dst, const S &amp;src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>converter</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a38ff488b8b21c0b4f4d7f44572fa4ee5</anchor>
      <arglist>(U &amp;dst, V &amp;src)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>dg_to_ros.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>dg__to__ros_8hh</filename>
    <includes id="matrix__geometry_8hh" name="matrix_geometry.hh" local="no" imported="no">ros_entities/matrix_geometry.hh</includes>
    <class kind="class">dynamic_graph::specific::Vector3</class>
    <class kind="class">dynamic_graph::specific::Twist</class>
    <class kind="class">dynamic_graph::DgToRos</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; double &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; unsigned int &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; Matrix &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; Vector &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; specific::Vector3 &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; MatrixHomogeneous &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; specific::Twist &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; std::pair&lt; specific::Vector3, Vector &gt; &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; std::pair&lt; MatrixHomogeneous, Vector &gt; &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; std::pair&lt; specific::Twist, Vector &gt; &gt;</class>
    <namespace>dynamic_graph</namespace>
    <namespace>dynamic_graph::specific</namespace>
  </compound>
  <compound kind="file">
    <name>matrix_geometry.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>matrix__geometry_8hh</filename>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_publish.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__publish_8hh</filename>
    <includes id="converter_8hh" name="converter.hh" local="yes" imported="no">ros_entities/converter.hh</includes>
    <includes id="dg__to__ros_8hh" name="dg_to_ros.hh" local="yes" imported="no">ros_entities/dg_to_ros.hh</includes>
    <includes id="ros__publish_8hxx" name="ros_publish.hxx" local="yes" imported="no">ros_publish.hxx</includes>
    <class kind="class">dynamic_graph::RosPublish</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_publish.hxx</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__publish_8hxx</filename>
    <includes id="dg__to__ros_8hh" name="dg_to_ros.hh" local="yes" imported="no">dg_to_ros.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_queued_subscribe.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__queued__subscribe_8hh</filename>
    <includes id="matrix__geometry_8hh" name="matrix_geometry.hh" local="no" imported="no">ros_entities/matrix_geometry.hh</includes>
    <includes id="converter_8hh" name="converter.hh" local="no" imported="no">ros_entities/converter.hh</includes>
    <includes id="dg__to__ros_8hh" name="dg_to_ros.hh" local="no" imported="no">ros_entities/dg_to_ros.hh</includes>
    <includes id="ros__queued__subscribe_8hxx" name="ros_queued_subscribe.hxx" local="yes" imported="no">ros_queued_subscribe.hxx</includes>
    <class kind="struct">dynamic_graph::internal::Add</class>
    <class kind="struct">dynamic_graph::internal::BindedSignalBase</class>
    <class kind="struct">dynamic_graph::internal::BindedSignal</class>
    <class kind="class">dynamic_graph::RosQueuedSubscribe</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_queued_subscribe.hxx</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__queued__subscribe_8hxx</filename>
    <class kind="struct">dynamic_graph::internal::Add</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_robot_state_publisher.hpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__robot__state__publisher_8hpp</filename>
    <class kind="struct">dynamic_graph::RosRobotStatePublisherInternal</class>
    <class kind="class">dynamic_graph::RosRobotStatePublisher</class>
    <namespace>dynamic_graph</namespace>
    <namespace>dynamicgraph</namespace>
    <namespace>dynamicgraph::command</namespace>
    <namespace>dynamicgraph::command::ros_state_publish</namespace>
    <member kind="define">
      <type>#define</type>
      <name>ROS_PUBLISH_MAKE_COMMAND</name>
      <anchorfile>ros__robot__state__publisher_8hpp.html</anchorfile>
      <anchor>a9201180ce4ec1ca81883161ab4506350</anchor>
      <arglist>(CMD)</arglist>
    </member>
    <member kind="typedef">
      <type>dynamicgraph::SignalTimeDependent&lt; int, int &gt;</type>
      <name>SignalOUT</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a9d80c350c95e161319d7a6e629ecdc4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>dynamicgraph::SignalPtr&lt; dynamicgraph::Vector, int &gt;</type>
      <name>SignalIN</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ae1463c695a6915ea3f9ab4311beb527a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::function&lt; void(int)&gt;</type>
      <name>callback_t</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>adf7d40f2a8d1425af80c14f90e58e961</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>realtime_tools::RealtimePublisher&lt; tf2_msgs::TFMessage &gt;</type>
      <name>TfRtPublisher</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ac8d567b9a3d1ab846ba2efdc1ff1e120</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>realtime_tools::RealtimePublisher&lt; sensor_msgs::JointState &gt;</type>
      <name>JointStateRtPublisher</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ae9ad83c8174a9aa5bc1688df02b4ee95</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ros_robot_state_publisher_mt.hpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__robot__state__publisher__mt_8hpp</filename>
    <class kind="struct">dynamic_graph::RosRobotStatePublisherMtInternal</class>
    <class kind="class">dynamic_graph::RosRobotStatePublisherMt</class>
    <namespace>dynamic_graph</namespace>
    <namespace>dynamicgraph</namespace>
    <namespace>dynamicgraph::command</namespace>
    <namespace>dynamicgraph::command::ros_state_publish</namespace>
    <member kind="define">
      <type>#define</type>
      <name>ROS_PUBLISH_MAKE_COMMAND</name>
      <anchorfile>ros__robot__state__publisher__mt_8hpp.html</anchorfile>
      <anchor>a9201180ce4ec1ca81883161ab4506350</anchor>
      <arglist>(CMD)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ros_subscribe.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__subscribe_8hh</filename>
    <includes id="matrix__geometry_8hh" name="matrix_geometry.hh" local="no" imported="no">ros_entities/matrix_geometry.hh</includes>
    <includes id="converter_8hh" name="converter.hh" local="yes" imported="no">converter.hh</includes>
    <includes id="dg__to__ros_8hh" name="dg_to_ros.hh" local="yes" imported="no">dg_to_ros.hh</includes>
    <includes id="ros__subscribe_8hxx" name="ros_subscribe.hxx" local="yes" imported="no">ros_subscribe.hxx</includes>
    <class kind="struct">dynamic_graph::internal::Add</class>
    <class kind="class">dynamic_graph::RosSubscribe</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_subscribe.hxx</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__subscribe_8hxx</filename>
    <includes id="ros__time_8hh" name="ros_time.hh" local="yes" imported="no">ros_time.hh</includes>
    <class kind="struct">dynamic_graph::internal::Add</class>
    <class kind="struct">dynamic_graph::internal::Add&lt; std::pair&lt; T, dg::Vector &gt; &gt;</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_tf_listener.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__tf__listener_8hh</filename>
    <includes id="matrix__geometry_8hh" name="matrix_geometry.hh" local="no" imported="no">ros_entities/matrix_geometry.hh</includes>
    <class kind="struct">dynamic_graph::internal::TransformListenerData</class>
    <class kind="class">dynamic_graph::RosTfListener</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_time.hh</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/include/ros_entities/</path>
    <filename>ros__time_8hh</filename>
    <class kind="class">dynamic_graph::RosTime</class>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>prologue.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/python/dynamic_graph_manager/device/</path>
    <filename>prologue_8py</filename>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>robot.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/python/dynamic_graph_manager/device/</path>
    <filename>robot_8py</filename>
    <class kind="class">robot::Robot</class>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>ros.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/python/dynamic_graph_manager/ros/</path>
    <filename>ros_8py</filename>
    <class kind="class">ros::ros::Ros</class>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>ros_client.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/python/dynamic_graph_manager/ros/</path>
    <filename>ros__client_8py</filename>
    <class kind="class">ros::ros_client::RosPythonInterpreter</class>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>shell_client.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/python/dynamic_graph_manager/ros/</path>
    <filename>shell__client_8py</filename>
    <class kind="class">ros::shell_client::DynamicGraphInteractiveConsole</class>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>robot_pose_publisher.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/python/ros_nodes/</path>
    <filename>robot__pose__publisher_8py</filename>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>run_command.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/python/ros_nodes/</path>
    <filename>run__command_8py</filename>
    <class kind="class">ros_nodes::run_command::DynamicGraphInteractiveConsole</class>
    <namespace>dynamic_graph_manager</namespace>
    <member kind="function">
      <type>def</type>
      <name>signal_handler</name>
      <anchorfile>run__command_8py.html</anchorfile>
      <anchor>aeae6fad83a1b92e70bce5c7a3b602025</anchor>
      <arglist>(sig, frame)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>save_history</name>
      <anchorfile>run__command_8py.html</anchorfile>
      <anchor>a635bda591a17fb43c98d4bffc1627e4b</anchor>
      <arglist>(histfile)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>setup.py</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/</path>
    <filename>setup_8py</filename>
    <namespace>dynamic_graph_manager</namespace>
  </compound>
  <compound kind="file">
    <name>device.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/</path>
    <filename>device_8cpp</filename>
    <includes id="device_8hh" name="device.hh" local="no" imported="no">dynamic_graph_manager/device.hh</includes>
    <member kind="function">
      <type>constexpr unsigned int</type>
      <name>str2int</name>
      <anchorfile>device_8cpp.html</anchorfile>
      <anchor>ab29c200876205c3add1d71f053195658</anchor>
      <arglist>(const char *str, int h=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>DYNAMICGRAPH_FACTORY_ENTITY_PLUGIN</name>
      <anchorfile>device_8cpp.html</anchorfile>
      <anchor>acb2dfe024c01897a987997464d538b28</anchor>
      <arglist>(Device, &quot;Device&quot;)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>device_simulator.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/</path>
    <filename>device__simulator_8cpp</filename>
    <includes id="device__simulator_8hh" name="device_simulator.hh" local="no" imported="no">dynamic_graph_manager/device_simulator.hh</includes>
    <namespace>dynamic_graph</namespace>
    <member kind="function">
      <type></type>
      <name>DYNAMICGRAPH_FACTORY_ENTITY_PLUGIN</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ac2b17f51aa9541c0b023291d4090be56</anchor>
      <arglist>(DeviceSimulator, &quot;DeviceSimulator&quot;)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>dynamic_graph_manager.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/</path>
    <filename>dynamic__graph__manager_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="no" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="dynamic__graph__manager_8hh" name="dynamic_graph_manager.hh" local="no" imported="no">dynamic_graph_manager/dynamic_graph_manager.hh</includes>
    <includes id="exception-yaml-cpp_8hpp" name="exception-yaml-cpp.hpp" local="no" imported="no">dynamic_graph_manager/exception/exception-yaml-cpp.hpp</includes>
  </compound>
  <compound kind="file">
    <name>exception-abstract.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-abstract_8cpp</filename>
    <includes id="exception-abstract_8hh" name="exception-abstract.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-abstract.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>exception-dynamic.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-dynamic_8cpp</filename>
    <includes id="exception-dynamic_8hh" name="exception-dynamic.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-dynamic.hh</includes>
  </compound>
  <compound kind="file">
    <name>exception-factory.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-factory_8cpp</filename>
    <includes id="exception-factory_8hh" name="exception-factory.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-factory.hh</includes>
  </compound>
  <compound kind="file">
    <name>exception-feature.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-feature_8cpp</filename>
    <includes id="exception-feature_8hh" name="exception-feature.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-feature.hh</includes>
  </compound>
  <compound kind="file">
    <name>exception-signal.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-signal_8cpp</filename>
    <includes id="exception-signal_8hh" name="exception-signal.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-signal.hh</includes>
  </compound>
  <compound kind="file">
    <name>exception-task.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-task_8cpp</filename>
    <includes id="exception-task_8hh" name="exception-task.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-task.hh</includes>
  </compound>
  <compound kind="file">
    <name>exception-tools.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-tools_8cpp</filename>
    <includes id="exception-tools_8hh" name="exception-tools.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-tools.hh</includes>
  </compound>
  <compound kind="file">
    <name>exception-yaml-cpp.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/exception/</path>
    <filename>exception-yaml-cpp_8cpp</filename>
    <includes id="exception-yaml-cpp_8hpp" name="exception-yaml-cpp.hpp" local="no" imported="no">dynamic_graph_manager/exception/exception-yaml-cpp.hpp</includes>
  </compound>
  <compound kind="file">
    <name>periodic-call.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/</path>
    <filename>periodic-call_8cpp</filename>
    <includes id="exception-tools_8hh" name="exception-tools.hh" local="no" imported="no">dynamic_graph_manager/exception/exception-tools.hh</includes>
    <includes id="periodic-call_8hh" name="periodic-call.hh" local="no" imported="no">dynamic_graph_manager/periodic-call.hh</includes>
  </compound>
  <compound kind="file">
    <name>converter.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>converter_8cpp</filename>
    <includes id="converter_8hh" name="converter.hh" local="no" imported="no">ros_entities/converter.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>dg_to_ros.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>dg__to__ros_8cpp</filename>
    <includes id="dg__to__ros_8hh" name="dg_to_ros.hh" local="yes" imported="no">ros_entities/dg_to_ros.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_publish.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>ros__publish_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="yes" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="dynamic__graph__manager_8hh" name="dynamic_graph_manager.hh" local="yes" imported="no">dynamic_graph_manager/dynamic_graph_manager.hh</includes>
    <includes id="ros__publish_8hh" name="ros_publish.hh" local="yes" imported="no">ros_entities/ros_publish.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_queued_subscribe.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>ros__queued__subscribe_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="yes" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="dynamic__graph__manager_8hh" name="dynamic_graph_manager.hh" local="yes" imported="no">dynamic_graph_manager/dynamic_graph_manager.hh</includes>
    <includes id="ros__queued__subscribe_8hh" name="ros_queued_subscribe.hh" local="yes" imported="no">ros_entities/ros_queued_subscribe.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_robot_state_publisher.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>ros__robot__state__publisher_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="yes" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="dynamic__graph__manager_8hh" name="dynamic_graph_manager.hh" local="yes" imported="no">dynamic_graph_manager/dynamic_graph_manager.hh</includes>
    <includes id="converter_8hh" name="converter.hh" local="yes" imported="no">ros_entities/converter.hh</includes>
    <includes id="ros__robot__state__publisher_8hpp" name="ros_robot_state_publisher.hpp" local="yes" imported="no">ros_entities/ros_robot_state_publisher.hpp</includes>
    <namespace>dynamic_graph</namespace>
    <namespace>dynamicgraph</namespace>
    <namespace>dynamicgraph::command</namespace>
    <namespace>dynamicgraph::command::ros_state_publish</namespace>
  </compound>
  <compound kind="file">
    <name>ros_robot_state_publisher_mt.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>ros__robot__state__publisher__mt_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="yes" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="dynamic__graph__manager_8hh" name="dynamic_graph_manager.hh" local="yes" imported="no">dynamic_graph_manager/dynamic_graph_manager.hh</includes>
    <includes id="converter_8hh" name="converter.hh" local="yes" imported="no">ros_entities/converter.hh</includes>
    <includes id="ros__robot__state__publisher__mt_8hpp" name="ros_robot_state_publisher_mt.hpp" local="yes" imported="no">ros_entities/ros_robot_state_publisher_mt.hpp</includes>
    <namespace>dynamic_graph</namespace>
    <namespace>dynamicgraph</namespace>
    <namespace>dynamicgraph::command</namespace>
    <namespace>dynamicgraph::command::ros_state_publish</namespace>
  </compound>
  <compound kind="file">
    <name>ros_subscribe.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>ros__subscribe_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="yes" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="dynamic__graph__manager_8hh" name="dynamic_graph_manager.hh" local="yes" imported="no">dynamic_graph_manager/dynamic_graph_manager.hh</includes>
    <includes id="ros__subscribe_8hh" name="ros_subscribe.hh" local="yes" imported="no">ros_entities/ros_subscribe.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_tf_listener.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>ros__tf__listener_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="yes" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <includes id="ros__tf__listener_8hh" name="ros_tf_listener.hh" local="yes" imported="no">ros_entities/ros_tf_listener.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_time.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/ros_entities/</path>
    <filename>ros__time_8cpp</filename>
    <includes id="ros__time_8hh" name="ros_time.hh" local="yes" imported="no">ros_entities/ros_time.hh</includes>
    <includes id="converter_8hh" name="converter.hh" local="yes" imported="no">ros_entities/converter.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>ros_init.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/</path>
    <filename>ros__init_8cpp</filename>
    <includes id="ros__init_8hh" name="ros_init.hh" local="no" imported="no">dynamic_graph_manager/ros_init.hh</includes>
    <namespace>dynamic_graph</namespace>
    <member kind="function">
      <type>ros::NodeHandle &amp;</type>
      <name>ros_init</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ab01ece41a91a029cf335e28548cdfc06</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>ros::AsyncSpinner &amp;</type>
      <name>ros_spinner</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a0ab97e95b56e05d30fd3112f8dfcf8eb</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ros_shutdown</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a0a7d6cd6c123bd1852af188fc06ce4f7</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ros_shutdown</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a7d2045abc7e02fe4ee746c5cbb937b04</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ros_exist</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ab000cd6e1e6ed365a5a3e1adddf89dff</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static std::map&lt; std::string, std::unique_ptr&lt; GlobalRos &gt; &gt;</type>
      <name>GLOBAL_ROS_VAR</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a877a1ed0d2adf7f675abf17f70b936a6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>ros_interpreter.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/</path>
    <filename>ros__interpreter_8cpp</filename>
    <includes id="ros__interpreter_8hh" name="ros_interpreter.hh" local="no" imported="no">dynamic_graph_manager/ros_interpreter.hh</includes>
    <namespace>dynamic_graph</namespace>
  </compound>
  <compound kind="file">
    <name>tools.cpp</name>
    <path>/workspace/software/workspace/src/catkin/dg_control/dynamic_graph_manager/src/</path>
    <filename>tools_8cpp</filename>
    <includes id="tools_8hh" name="tools.hh" local="no" imported="no">dynamic_graph_manager/tools.hh</includes>
    <namespace>dynamic_graph</namespace>
    <member kind="function">
      <type>void</type>
      <name>parse_yaml_node</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a3473e2d5502f8a2bff6b43cbc2d35e07</anchor>
      <arglist>(const YAML::Node &amp;sensors_and_controls, VectorDGMap &amp;out_sensors_map, VectorDGMap &amp;out_motor_controls_map)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::internal::Add</name>
    <filename>structdynamic__graph_1_1internal_1_1Add.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::internal::Add&lt; std::pair&lt; T, dg::Vector &gt; &gt;</name>
    <filename>structdynamic__graph_1_1internal_1_1Add_3_01std_1_1pair_3_01T_00_01dg_1_1Vector_01_4_01_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::internal::BindedSignal</name>
    <filename>structdynamic__graph_1_1internal_1_1BindedSignal.html</filename>
    <templarg></templarg>
    <templarg>BufferSize</templarg>
    <base>dynamic_graph::internal::BindedSignalBase</base>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>structdynamic__graph_1_1internal_1_1BindedSignal.html</anchorfile>
      <anchor>a8d377e90b7ece8b1861ddcfa8c7617c8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>size_type</type>
      <name>frontIdx</name>
      <anchorfile>structdynamic__graph_1_1internal_1_1BindedSignal.html</anchorfile>
      <anchor>af90b4e3d1f26e7525f51e0903c17a37f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_type</type>
      <name>backIdx</name>
      <anchorfile>structdynamic__graph_1_1internal_1_1BindedSignal.html</anchorfile>
      <anchor>a93b1cf4373c6271937f535a68334c523</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::internal::BindedSignalBase</name>
    <filename>structdynamic__graph_1_1internal_1_1BindedSignalBase.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::Device</name>
    <filename>classdynamic__graph_1_1Device.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual const std::string &amp;</type>
      <name>getClassName</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>af0e00dbc756e6191b2f5d6883187c92f</anchor>
      <arglist>(void) const</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Device</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a76c80f6d47e2151494e375e2faf78c0d</anchor>
      <arglist>(const std::string &amp;input_name)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Device</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a9dabc419c8d8df3a686c33ce042bc99a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>initialize</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>af6edd01afac2838c4e336c76caa4338a</anchor>
      <arglist>(const YAML::Node &amp;params)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>initialize_from_file</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>af71d151e69555e9530d770d3d90b7f3e</anchor>
      <arglist>(const std::string &amp;yaml_file)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_maps</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>ac4203f6753b2d534c0ade84fb52ac47e</anchor>
      <arglist>(const YAML::Node &amp;sensors_and_controls)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>set_sensors_from_map</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>ab8dc9a016ebbc34521812a27b5aa6efa</anchor>
      <arglist>(const VectorDGMap &amp;sensors)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>execute_graph</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>adb596e7acd67089bb4929cf577b3c6ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>execute_graph_deprecated</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a126268314fea8fff802fc957cbf3e0d7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>get_controls_to_map</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a3291a91974c35f03719220e237512aa8</anchor>
      <arglist>(VectorDGMap &amp;motor_controls)</arglist>
    </member>
    <member kind="variable">
      <type>DeviceOutSignalMap</type>
      <name>sensors_out_</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>ab397e65116cdc32ffa767bfc92c0b7e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>VectorDGMap</type>
      <name>sensors_map_</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a338b04580b75994516b8cc04d6605541</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>DeviceInSignalMap</type>
      <name>motor_controls_in_</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a77f0617d7b53fb47d77af7557521daf4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>VectorDGMap</type>
      <name>motor_controls_map_</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a9d866a7e294a7445fb88dee8d8a80851</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>CLASS_NAME</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>ab1612928a8cf1a9133fb2571f99095b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PeriodicCall</type>
      <name>periodic_call_before_</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>afe6456e2d14701498bde6ed74fb0526a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PeriodicCall</type>
      <name>periodic_call_after_</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>aa2ff18a40858856c9be43b2d609d63ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>YAML::Node</type>
      <name>params_</name>
      <anchorfile>classdynamic__graph_1_1Device.html</anchorfile>
      <anchor>a9dc0a118c20e33194463eff1c18ce247</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::DeviceSimulator</name>
    <filename>classdynamic__graph_1_1DeviceSimulator.html</filename>
    <base>dynamic_graph::Device</base>
    <member kind="function">
      <type></type>
      <name>DeviceSimulator</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>ad1c52d0a4bfa4617c7653532570a2c90</anchor>
      <arglist>(const std::string &amp;input_name)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DeviceSimulator</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>a7510771e215f2f20f05a5d4193dc4f76</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>initialize</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>a346995902653feca7707f8c62ab4bf95</anchor>
      <arglist>(const YAML::Node &amp;params)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>initialize_from_file</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>a8a9370f236ba03162be2472c79f865f2</anchor>
      <arglist>(const std::string &amp;yaml_file)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>execute_graph</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>a614c51ee8d55765019ae98715f875ed5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>DeviceOutSignalMap</type>
      <name>simu_motor_controls_out_</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>abbbcc26f173788b15a395ff87f3925e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>DeviceInSignalMap</type>
      <name>simu_sensors_in_</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>a8640ee078f06fc5f31efcb2b35c9ed99</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>CLASS_NAME</name>
      <anchorfile>classdynamic__graph_1_1DeviceSimulator.html</anchorfile>
      <anchor>a4f28a1f4a96bdf5a2adf1e1f15a8ab77</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ros::dgcompleter::DGCompleter</name>
    <filename>classros_1_1dgcompleter_1_1DGCompleter.html</filename>
    <member kind="function">
      <type>def</type>
      <name>__init__</name>
      <anchorfile>classros_1_1dgcompleter_1_1DGCompleter.html</anchorfile>
      <anchor>afe3b02de52a32cdeadcefbf6baecacb2</anchor>
      <arglist>(self)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>complete</name>
      <anchorfile>classros_1_1dgcompleter_1_1DGCompleter.html</anchorfile>
      <anchor>a0662ed6ab4e56fb2a828c5577e03b41e</anchor>
      <arglist>(self, text, state)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::DgToRos</name>
    <filename>classdynamic__graph_1_1DgToRos.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; double &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01double_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; Matrix &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01Matrix_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; MatrixHomogeneous &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01MatrixHomogeneous_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; specific::Twist &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01specific_1_1Twist_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; specific::Vector3 &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01specific_1_1Vector3_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; std::pair&lt; MatrixHomogeneous, Vector &gt; &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01std_1_1pair_3_01MatrixHomogeneous_00_01Vector_01_4_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; std::pair&lt; specific::Twist, Vector &gt; &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01std_1_1pair_3_01specific_1_1Twist_00_01Vector_01_4_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; std::pair&lt; specific::Vector3, Vector &gt; &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01std_1_1pair_3_01specific_1_1Vector3_00_01Vector_01_4_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; unsigned int &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01unsigned_01int_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::DgToRos&lt; Vector &gt;</name>
    <filename>structdynamic__graph_1_1DgToRos_3_01Vector_01_4.html</filename>
  </compound>
  <compound kind="class">
    <name>ros::shell_client::DynamicGraphInteractiveConsole</name>
    <filename>classros_1_1shell__client_1_1DynamicGraphInteractiveConsole.html</filename>
    <member kind="function">
      <type>def</type>
      <name>runcode</name>
      <anchorfile>classros_1_1shell__client_1_1DynamicGraphInteractiveConsole.html</anchorfile>
      <anchor>ae2781aac94d439abbdc158961562342f</anchor>
      <arglist>(self, code)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>runsource</name>
      <anchorfile>classros_1_1shell__client_1_1DynamicGraphInteractiveConsole.html</anchorfile>
      <anchor>afe6b432e407d107434ccc105a99f7746</anchor>
      <arglist>(self, source, filename=&apos;&lt; input &gt;&apos;, symbol=&apos;single&apos;)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ros_nodes::run_command::DynamicGraphInteractiveConsole</name>
    <filename>classros__nodes_1_1run__command_1_1DynamicGraphInteractiveConsole.html</filename>
    <member kind="function">
      <type>def</type>
      <name>runcode</name>
      <anchorfile>classros__nodes_1_1run__command_1_1DynamicGraphInteractiveConsole.html</anchorfile>
      <anchor>a2ef2227d691887e3dd6675c0df5acc2c</anchor>
      <arglist>(self, code)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>runsource</name>
      <anchorfile>classros__nodes_1_1run__command_1_1DynamicGraphInteractiveConsole.html</anchorfile>
      <anchor>a20a3fd5163e9cd015837fde8e6cead02</anchor>
      <arglist>(self, source, filename=&apos;&lt; input &gt;&apos;, symbol=&apos;single&apos;)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::DynamicGraphManager</name>
    <filename>classdynamic__graph_1_1DynamicGraphManager.html</filename>
    <member kind="function">
      <type></type>
      <name>DynamicGraphManager</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>afd98424082e5a1f878e6c7cb08a62c4a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~DynamicGraphManager</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a6bcf93d16574035ee654289274d0a790</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ac6859456bbdd4307cb880dc5e54131dd</anchor>
      <arglist>(YAML::Node param)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a93272fcbb3793dfc92422186022ecf72</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wait_start_dynamic_graph</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a18dab9ca9c8901779a944386f2b8898c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wait_stop_dynamic_graph</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ab827a776b4ac31ea91ace9a2bfc1e99d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wait_stop_hardware_communication</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a83a98e169cd587d101bba69bb799e408</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_dynamic_graph_process</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a81926d5d33573d667bc6511bbb2d8f52</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>run_python_command</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a56acce72235fe0786830ec19a3439309</anchor>
      <arglist>(std::ostream &amp;file, const std::string &amp;command)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>python_prologue</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a11cc3b7fefc7fe146dc112a7e6d55f3d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>run_dynamic_graph_process</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a8e23eb4ce0acaef397bf84a770b9f015</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>run_hardware_communication_process</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a81e7cb10262383030c10156730d39ce8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>run_single_process</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ad13f5aef302173293a0c162c28505ef8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ae3927887762c52c7bf50ab5a565c3077</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a7bddce83d5185433041ad27610b85b3a</anchor>
      <arglist>(VectorDGMap &amp;)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a506e6f37ac7205efaf0efe4202cde897</anchor>
      <arglist>(const VectorDGMap &amp;)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>compute_safety_controls</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a60bb31040121d6041b4dd6556f5c7eac</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop_dynamic_graph</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ad3c7c528ef283fbfb803377c8c631b4c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start_dynamic_graph</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a1bfd2b965dde19d12d63f5928a4f670c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_dynamic_graph_stopped</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ab929d21277e5d2fba726b8ae422c27a8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop_hardware_communication</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>aabf11778fb69e5203d38c8093de60bab</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start_hardware_communication</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a234bef10fea6e3f9beb1580491127660</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_hardware_communication_stopped</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>afcc53ebec6e5f2057c23a05894715125</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>pid_t</type>
      <name>pid_dynamic_graph_process</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a9c11927e0b76e91fabc4b34ea7fb85bc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>pid_t</type>
      <name>pid_hardware_communication_process</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ac1abb11591e037e203329e900c89f4f5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Device &amp;</type>
      <name>device</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a90bb14375da3d2aaaeafb356b6ca54f7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>has_dynamic_graph_process_died</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ab980a2384c817ab5f59e712a54b2261a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_in_safety_mode</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>aea29e8dc351e0a50a8d2803d854d238d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>dg_ros_node_name_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a391d7a3f7c3df820d31f2c1d0ff7fc51</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>hw_com_ros_node_name_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a415f24927dbe9dfd0ee4a6462428bd48</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>shared_memory_name_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a97fa7b0a31efa6192c3dcc44fbe63886</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>sensors_map_name_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>abd4e4f618fbdacfda8c2cdece08e401b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>motor_controls_map_name_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a056de4d7a49496b2b0812d96d93370d9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>cond_var_name_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a909b8d2d024a2a11473fa2d94a18002e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>add_user_command</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a72146c4ddd173869a512e9f174ad48df</anchor>
      <arglist>(std::function&lt; void(void)&gt; func)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>ros::ServiceServer</type>
      <name>ros_service_start_dg_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>adb99ba3a7a5e677b30531a69bcc922ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>ros::ServiceServer</type>
      <name>ros_service_stop_dg_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>adf973b6da4e4fe14cae262ba94ebb191</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::atomic&lt; bool &gt;</type>
      <name>is_dynamic_graph_stopped_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a87baafbaadf396a7663da653dc5da106</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::atomic&lt; bool &gt;</type>
      <name>is_hardware_communication_stopped_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ab1a2bc0a8f04126638056f430297097e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::unique_ptr&lt; dynamic_graph::RosPythonInterpreter &gt;</type>
      <name>ros_python_interpreter_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a40458dd801d1ee7e2051f8b8fab5366b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::unique_ptr&lt; real_time_tools::RealTimeThread &gt;</type>
      <name>thread_dynamic_graph_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>aee7d35de31cdb05958c1b4f539c290ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::unique_ptr&lt; real_time_tools::RealTimeThread &gt;</type>
      <name>thread_hardware_communication_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ae0e1a3c59fa7d0282529e1a544e83b4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>pid_t</type>
      <name>pid_dynamic_graph_process_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>aa8aa645099e7e9cce426381e38b5027d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>pid_t</type>
      <name>pid_hardware_communication_process_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a02232cdc5cabca34d07dada6ced38532</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::unique_ptr&lt; Device &gt;</type>
      <name>device_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a416ca1c33660df4f7f74eb29df4c5a58</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>VectorDGMap</type>
      <name>sensors_map_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a896bf6cb22d2d88a5a6a307a2e44608e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>VectorDGMap</type>
      <name>motor_controls_map_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a03eabd2f08990a1dcc1caa652b701020</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::unique_ptr&lt; shared_memory::LockedConditionVariable &gt;</type>
      <name>cond_var_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a003d8598839c07a7d81c1afed0ea0b01</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>has_been_waken_by_dg_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a7e6cc5e58f1accce947f929d233a67fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>unsigned</type>
      <name>missed_control_count_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>abafc3cf4d8f7dc938f98b7eb07b7af9a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>unsigned</type>
      <name>max_missed_control_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a10922e790e039f78b0fabbb5ef944488</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>clock::duration</type>
      <name>control_period_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a1006cdb2d7e30e291d3d568923ebbc03</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>clock::time_point</type>
      <name>hw_time_loop_before_sleep_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a26167d2936575dfdbe31be4717b70cc5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>clock::time_point</type>
      <name>hw_time_loop_after_sleep_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a3641066efdd3424bb2bd745f6ba8d315</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>clock::duration</type>
      <name>hw_meas_sleep_time_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>afb2f9b39e5c529d525999c3e91e06213</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>clock::duration</type>
      <name>hw_ref_sleep_time_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>aa89f848a27f201aed320e2c6a441dc02</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>clock::duration</type>
      <name>hw_meas_active_time_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>af4c9ca6b9c161ac578b6726eaa7b7826</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>is_real_robot_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a81617144faf55e4ed2bf60165060b0f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>dg_active_timer_file_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a18c2cc959dceef659ab1f567e06254f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>dg_sleep_timer_file_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>af02dbc7fb67674937208abe4cd75d652</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>dg_timer_file_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a1a43bcf9c74648466d1e561203a39d87</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>hwc_active_timer_file_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a2bd29dbd358b8c02805f4df970e75936</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>hwc_sleep_timer_file_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a5db6275d202963665a35c5eb2e68088d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>hwc_timer_file_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a84f97c9eebbecee1af314e74fe22d8ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>log_dir_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ace11054bf618c29e4fda9a77905e8ff0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>python_log_file_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ac3be4a8d0596390bc5dd055321a7df55</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>app_dir_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a1f413dd58d270daf3c03f08d4a2c51cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>real_time_tools::Timer</type>
      <name>dg_active_timer_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a8f206d87817177e389df0c27f1954f51</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>real_time_tools::Timer</type>
      <name>dg_sleep_timer_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a8e0eb495ce07011796c58f54cef16ef5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>real_time_tools::Timer</type>
      <name>dg_timer_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ae73984087ad28fe492905eda861783bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>real_time_tools::Timer</type>
      <name>hwc_active_timer_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>afe6c823bac22d756fc649f911fc1c29b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>real_time_tools::Timer</type>
      <name>hwc_sleep_timer_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a89eb402f9e2eaa8dfad090f6c9845f6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>real_time_tools::Timer</type>
      <name>hwc_timer_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a08ef83c411e5439204fa05b28f8e2794</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>unsigned</type>
      <name>memory_buffer_timers_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a844d4f6c15668884b37111003c8a25a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>real_time_tools::Spinner</type>
      <name>hwc_spinner_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ab4716c8ec6194816235e6199863f46f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>double</type>
      <name>hwc_predicted_sleeping_time_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>af5aa11023c1dd272d7bbabdcccc511b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>double</type>
      <name>maximum_time_for_user_cmd_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>abb979a3e9235ef71a61579a6a6ad1200</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::deque&lt; std::function&lt; void(void)&gt; &gt;</type>
      <name>user_commands_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a1a07b4003cc1a0021e675847cc57ef5c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::deque&lt; ros::ServiceServer &gt;</type>
      <name>ros_user_commands_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a0fb35bc44f331db3570c09b75b49cd15</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>double</type>
      <name>control_period_sec_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a2c0f1323534e9e1b17f3b1cc23f0c7f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>YAML::Node</type>
      <name>params_</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>ad3773835c294117a500af96d272921ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="private">
      <type>bool</type>
      <name>start_dynamic_graph</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a664c7a3810c13a33057ae060281966b1</anchor>
      <arglist>(std_srvs::Empty::Request &amp;, std_srvs::Empty::Response &amp;)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>bool</type>
      <name>stop_dynamic_graph</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a06740416640f3464edbbb57ee759b8fb</anchor>
      <arglist>(std_srvs::Empty::Request &amp;, std_srvs::Empty::Response &amp;)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>start_ros_service</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>aa396c4c91c076a103e2d5cb6c5606a7d</anchor>
      <arglist>(ros::NodeHandle &amp;ros_node_handle)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void *</type>
      <name>dynamic_graph_real_time_loop</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a72f9e755719ec8fde8f145a67b518333</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void *</type>
      <name>hardware_communication_real_time_loop</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a4ea4183f1a4bd2d450ffb4a0a22b4242</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void *</type>
      <name>single_process_real_time_loop</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>adf3adb88c5913b21b51c1f7bfab6d0f3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private" static="yes">
      <type>static void *</type>
      <name>dynamic_graph_real_time_loop_helper</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a7d289a916922f69796b0042f64de1499</anchor>
      <arglist>(void *context)</arglist>
    </member>
    <member kind="function" protection="private" static="yes">
      <type>static void *</type>
      <name>hardware_communication_real_time_loop_helper</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>a771ad93758759932899273c5f01975fc</anchor>
      <arglist>(void *context)</arglist>
    </member>
    <member kind="function" protection="private" static="yes">
      <type>static void *</type>
      <name>single_process_real_time_loop_helper</name>
      <anchorfile>classdynamic__graph_1_1DynamicGraphManager.html</anchorfile>
      <anchor>af28f8990655ae8464acb3bd4c56a74c2</anchor>
      <arglist>(void *context)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionAbstract</name>
    <filename>classdynamic__graph_1_1ExceptionAbstract.html</filename>
    <member kind="function">
      <type>int</type>
      <name>getCode</name>
      <anchorfile>classdynamic__graph_1_1ExceptionAbstract.html</anchorfile>
      <anchor>a4b3009fb1517a2e382026c31ef618526</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getStringMessage</name>
      <anchorfile>classdynamic__graph_1_1ExceptionAbstract.html</anchorfile>
      <anchor>ab43a64baae9d779737b03c7c1fbb6919</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>getMessage</name>
      <anchorfile>classdynamic__graph_1_1ExceptionAbstract.html</anchorfile>
      <anchor>aa7b63b9c5529a7d07d5a9a880bf9a0a5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>code</name>
      <anchorfile>classdynamic__graph_1_1ExceptionAbstract.html</anchorfile>
      <anchor>a160cf3cd35aad75738f8b26c5cec6fdc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>message</name>
      <anchorfile>classdynamic__graph_1_1ExceptionAbstract.html</anchorfile>
      <anchor>a9622b93d152c08ab80ed4b48ea24380b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="private">
      <type></type>
      <name>ExceptionAbstract</name>
      <anchorfile>classdynamic__graph_1_1ExceptionAbstract.html</anchorfile>
      <anchor>a474009850ce7a50c121e4c4294181e79</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="friend">
      <type>friend std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>classdynamic__graph_1_1ExceptionAbstract.html</anchorfile>
      <anchor>af1ab4fed15cda5c7de2c9c4f809bd611</anchor>
      <arglist>(std::ostream &amp;os, const ExceptionAbstract &amp;err)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionDynamic</name>
    <filename>classdynamic__graph_1_1ExceptionDynamic.html</filename>
    <base>dynamic_graph::ExceptionAbstract</base>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionFactory</name>
    <filename>classdynamic__graph_1_1ExceptionFactory.html</filename>
    <base>dynamic_graph::ExceptionAbstract</base>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionFeature</name>
    <filename>classdynamic__graph_1_1ExceptionFeature.html</filename>
    <base>dynamic_graph::ExceptionAbstract</base>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionSignal</name>
    <filename>classdynamic__graph_1_1ExceptionSignal.html</filename>
    <base>dynamic_graph::ExceptionAbstract</base>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionTask</name>
    <filename>classdynamic__graph_1_1ExceptionTask.html</filename>
    <base>dynamic_graph::ExceptionAbstract</base>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionTools</name>
    <filename>classdynamic__graph_1_1ExceptionTools.html</filename>
    <base>dynamic_graph::ExceptionAbstract</base>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::ExceptionYamlCpp</name>
    <filename>classdynamic__graph_1_1ExceptionYamlCpp.html</filename>
    <base>dynamic_graph::ExceptionAbstract</base>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::GlobalRos</name>
    <filename>structdynamic__graph_1_1GlobalRos.html</filename>
    <member kind="function">
      <type></type>
      <name>~GlobalRos</name>
      <anchorfile>structdynamic__graph_1_1GlobalRos.html</anchorfile>
      <anchor>ad2d7b476bb25e863b0aa7da247c2869c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>boost::shared_ptr&lt; ros::NodeHandle &gt;</type>
      <name>node_handle_</name>
      <anchorfile>structdynamic__graph_1_1GlobalRos.html</anchorfile>
      <anchor>ac0f84eb7fdf20f2d5374d56a14c25b8d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>boost::shared_ptr&lt; ros::AsyncSpinner &gt;</type>
      <name>async_spinner_</name>
      <anchorfile>structdynamic__graph_1_1GlobalRos.html</anchorfile>
      <anchor>a9ad45d4ac3a50e943d3f2cb24f8281a3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::PeriodicCall</name>
    <filename>classdynamic__graph_1_1PeriodicCall.html</filename>
    <class kind="struct">dynamic_graph::PeriodicCall::SignalToCall</class>
  </compound>
  <compound kind="class">
    <name>robot::Robot</name>
    <filename>classrobot_1_1Robot.html</filename>
    <member kind="function">
      <type>def</type>
      <name>start_tracer</name>
      <anchorfile>classrobot_1_1Robot.html</anchorfile>
      <anchor>a3efb51e990f1e3292f321858e9a9723f</anchor>
      <arglist>(self)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>stop_tracer</name>
      <anchorfile>classrobot_1_1Robot.html</anchorfile>
      <anchor>ace42b97e31dcc38be3bd69b2ab33a214</anchor>
      <arglist>(self)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>export_device_dg_to_ros</name>
      <anchorfile>classrobot_1_1Robot.html</anchorfile>
      <anchor>ad5787c862823008387c047da5f34dd7e</anchor>
      <arglist>(self)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ros::ros::Ros</name>
    <filename>classros_1_1ros_1_1Ros.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosPublish</name>
    <filename>classdynamic__graph_1_1RosPublish.html</filename>
  </compound>
  <compound kind="class">
    <name>ros::ros_client::RosPythonInterpreter</name>
    <filename>classros_1_1ros__client_1_1RosPythonInterpreter.html</filename>
    <member kind="function">
      <type>def</type>
      <name>run_python_command</name>
      <anchorfile>classros_1_1ros__client_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>ad1de2f9fb464e1f3f81dbac5396208f7</anchor>
      <arglist>(self, code_string)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>run_python_script</name>
      <anchorfile>classros_1_1ros__client_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a63e042101395102abd40958406bea3a2</anchor>
      <arglist>(self, filename)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>def</type>
      <name>_atexit</name>
      <anchorfile>classros_1_1ros__client_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a817a0c056aeeba19895cb8c111c370df</anchor>
      <arglist>(self)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosPythonInterpreter</name>
    <filename>classdynamic__graph_1_1RosPythonInterpreter.html</filename>
    <member kind="typedef">
      <type>boost::function&lt; bool(dynamic_graph_manager::RunCommand::Request &amp;, dynamic_graph_manager::RunCommand::Response &amp;)&gt;</type>
      <name>run_python_command_callback_t</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>aa9fcb34973d84db722fa39803d11c00d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::function&lt; bool(dynamic_graph_manager::RunPythonFile::Request &amp;, dynamic_graph_manager::RunPythonFile::Response &amp;)&gt;</type>
      <name>run_python_file_callback_t</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a802128e670817aa48dd8db54830a7977</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>RosPythonInterpreter</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a082493a5a7edd758b65a34fc9e617df5</anchor>
      <arglist>(ros::NodeHandle &amp;node_handle)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~RosPythonInterpreter</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a45378e164f35c3cc8dffe1cca7473dde</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>run_python_command</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a9745742713e7dc9302468519c1cae9a1</anchor>
      <arglist>(const std::string &amp;command, std::string &amp;result, std::string &amp;out, std::string &amp;err)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>run_python_file</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a4a90b557973b8aa533e297adab4bcbe6</anchor>
      <arglist>(const std::string ifilename, std::string &amp;standard_error)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start_ros_service</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>ae6f58ecea63921945529f367c27dd70e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>runCommandCallback</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>af589eb361f3193c48c7e7f2eb5a3ff64</anchor>
      <arglist>(dynamic_graph_manager::RunCommand::Request &amp;req, dynamic_graph_manager::RunCommand::Response &amp;res)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>runPythonFileCallback</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a519321128872afdcec622a4892c63196</anchor>
      <arglist>(dynamic_graph_manager::RunPythonFile::Request &amp;req, dynamic_graph_manager::RunPythonFile::Response &amp;res)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>dynamicgraph::python::Interpreter</type>
      <name>interpreter_</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a1e4f91705887914b6e5f649b2fb7fcfa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::NodeHandle &amp;</type>
      <name>ros_node_handle_</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>ac0ff23f78488bfcbaa6afaae75ec5a8e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::ServiceServer</type>
      <name>run_python_command_srv_</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>a10b59f74957922f74e84709b2a6920da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::ServiceServer</type>
      <name>run_python_file_srv_</name>
      <anchorfile>classdynamic__graph_1_1RosPythonInterpreter.html</anchorfile>
      <anchor>aebb8e4197d11cef0bd49b613b761e081</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosQueuedSubscribe</name>
    <filename>classdynamic__graph_1_1RosQueuedSubscribe.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosRobotStatePublisher</name>
    <filename>classdynamic__graph_1_1RosRobotStatePublisher.html</filename>
    <member kind="function">
      <type>void</type>
      <name>add</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a92094934e53306e73b6fc13d1de61b3d</anchor>
      <arglist>(const std::string &amp;base_link_name, const std::string &amp;joint_names, const std::string &amp;tf_prefix, const std::string &amp;signal_name, const std::string &amp;joint_state_topic_name)</arglist>
    </member>
    <member kind="function">
      <type>int &amp;</type>
      <name>trigger</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a4d66defbd1b308cd06394107f55f6cbb</anchor>
      <arglist>(int &amp;, int)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>send_data</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a196621509ce1e5becada60a7093bcb3a</anchor>
      <arglist>(const RosRobotStatePublisherInternal &amp;publisher, int time)</arglist>
    </member>
    <member kind="function" protection="private" virtualness="virtual">
      <type>virtual const std::string &amp;</type>
      <name>getClassName</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>aa031a669a2c2784c50b558fd2e2b6da3</anchor>
      <arglist>(void) const</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>set_tf_msg_to_identity</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>af3e0cfe13273ecd8c6e01b59bb6220e7</anchor>
      <arglist>(geometry_msgs::TransformStamped &amp;msg)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>normalize_tf_msg_quaternion</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>acb4e771801c5bc13c7a2b022c3dd6b9d</anchor>
      <arglist>(geometry_msgs::TransformStamped &amp;msg)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>SignalOUT</type>
      <name>trigger_signal_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a175914c0624474d019cb1360fa9c14e4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::NodeHandle &amp;</type>
      <name>ros_node_handle_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a5b494e473d93118cb69320c01dfd772c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>std::map&lt; std::string, RosRobotStatePublisherInternal &gt;</type>
      <name>publishers_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a556fe3ed8d7c0786e0d6aad4cbb415db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::Duration</type>
      <name>rate_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>af638eb336998964161a89e4ce76821d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::Time</type>
      <name>last_time_of_publication_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a000e917f448ac480bfc8b2559d41a4b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private" static="yes">
      <type>static const std::string</type>
      <name>CLASS_NAME</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisher.html</anchorfile>
      <anchor>a3794be6383ba4bc9a7412218a755f524</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::RosRobotStatePublisherInternal</name>
    <filename>structdynamic__graph_1_1RosRobotStatePublisherInternal.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosRobotStatePublisherMt</name>
    <filename>classdynamic__graph_1_1RosRobotStatePublisherMt.html</filename>
    <member kind="function">
      <type>void</type>
      <name>add</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>a2a3280fbd7d9f71c76481830ad71593c</anchor>
      <arglist>(const std::string &amp;base_link_name, const std::string &amp;joint_names, const std::string &amp;tf_prefix, const std::string &amp;signal_name, const std::string &amp;joint_state_topic_name)</arglist>
    </member>
    <member kind="function">
      <type>int &amp;</type>
      <name>trigger</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>ab246d4672cb6ccf5d0733dae31c5adbf</anchor>
      <arglist>(int &amp;, int)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>copy_data_internally</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>a80a4f8a4d9cf9be7c40927ae05d1897f</anchor>
      <arglist>(std::shared_ptr&lt; RosRobotStatePublisherMtInternal &gt; publisher, int dg_time)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>send_data</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>ac1826cd456058c929f709b3684d85544</anchor>
      <arglist>(RosRobotStatePublisherMtInternal &amp;publisher)</arglist>
    </member>
    <member kind="function" protection="private" virtualness="virtual">
      <type>virtual const std::string &amp;</type>
      <name>getClassName</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>aaeaca4bd0fccded2cf35a5a766fa6af1</anchor>
      <arglist>(void) const</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>set_tf_msg_to_identity</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>af4d3c3ef459132bcce1d47e3a828f0b9</anchor>
      <arglist>(geometry_msgs::TransformStamped &amp;msg)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>normalize_tf_msg_quaternion</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>a191779102a7ffb3a947eb345eb55f3d3</anchor>
      <arglist>(geometry_msgs::TransformStamped &amp;msg)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>SignalOUT</type>
      <name>trigger_signal_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>af44e1e178bd62374b9b77a630d66ae71</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::NodeHandle &amp;</type>
      <name>ros_node_handle_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>ad317cb381f8a903622833a384fb9e416</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>std::map&lt; std::string, std::shared_ptr&lt; RosRobotStatePublisherMtInternal &gt; &gt;</type>
      <name>publishers_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>a0ff7fbacd021e14f3abcae8dbd5c4ec0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::Duration</type>
      <name>rate_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>a5e7825cca5321d2d535e04a78a789834</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>ros::Time</type>
      <name>last_time_of_publication_</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>a3fc518e75944ca45b886b0db99d342c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private" static="yes">
      <type>static const std::string</type>
      <name>CLASS_NAME</name>
      <anchorfile>classdynamic__graph_1_1RosRobotStatePublisherMt.html</anchorfile>
      <anchor>a7e67abeab5368f985fe433896bfc83ab</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::RosRobotStatePublisherMtInternal</name>
    <filename>structdynamic__graph_1_1RosRobotStatePublisherMtInternal.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosSubscribe</name>
    <filename>classdynamic__graph_1_1RosSubscribe.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosTfListener</name>
    <filename>classdynamic__graph_1_1RosTfListener.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::RosTime</name>
    <filename>classdynamic__graph_1_1RosTime.html</filename>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::PeriodicCall::SignalToCall</name>
    <filename>structdynamic__graph_1_1PeriodicCall_1_1SignalToCall.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph_manager::SimpleDGM</name>
    <filename>classdynamic__graph__manager_1_1SimpleDGM.html</filename>
    <base>dynamic_graph::DynamicGraphManager</base>
    <member kind="function">
      <type></type>
      <name>SimpleDGM</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>abb548458a154ee8e9ae63a32f1191ef6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~SimpleDGM</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>a250f18b97619c72446074662626423d4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>a5d771fc5a9ae6dd524a658d50fbee5d3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>aa92cd33a31c934835252f834bab7b9f4</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>ad38ccd35cc0c409a0aaefa8565634109</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>get_has_user_command_been_executed</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>a08793eb7410b2820e00e028688d890a9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>user_command_callback</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>adb40055a916691d326bc6466eab9680b</anchor>
      <arglist>(dynamic_graph_manager::TestUserCmdBool::Request &amp;req, dynamic_graph_manager::TestUserCmdBool::Response &amp;res)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_in_safety_mode</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>a5fe81f9feb5d982761d7a427aa31e7b4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>compute_safety_controls</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>a37b28e687ce4e724770f5c9f23da4d4f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>user_command</name>
      <anchorfile>classdynamic__graph__manager_1_1SimpleDGM.html</anchorfile>
      <anchor>a6ba8314169c29c722cdcea810798f08d</anchor>
      <arglist>(bool user_input)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dynamic_graph::internal::TransformListenerData</name>
    <filename>structdynamic__graph_1_1internal_1_1TransformListenerData.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::specific::Twist</name>
    <filename>classdynamic__graph_1_1specific_1_1Twist.html</filename>
  </compound>
  <compound kind="class">
    <name>dynamic_graph::specific::Vector3</name>
    <filename>classdynamic__graph_1_1specific_1_1Vector3.html</filename>
  </compound>
  <compound kind="namespace">
    <name>dynamic_graph</name>
    <filename>namespacedynamic__graph.html</filename>
    <namespace>dynamic_graph::specific</namespace>
    <class kind="class">dynamic_graph::Device</class>
    <class kind="class">dynamic_graph::DeviceSimulator</class>
    <class kind="class">dynamic_graph::DgToRos</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; double &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; Matrix &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; MatrixHomogeneous &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; specific::Twist &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; specific::Vector3 &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; std::pair&lt; MatrixHomogeneous, Vector &gt; &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; std::pair&lt; specific::Twist, Vector &gt; &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; std::pair&lt; specific::Vector3, Vector &gt; &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; unsigned int &gt;</class>
    <class kind="struct">dynamic_graph::DgToRos&lt; Vector &gt;</class>
    <class kind="class">dynamic_graph::DynamicGraphManager</class>
    <class kind="class">dynamic_graph::ExceptionAbstract</class>
    <class kind="class">dynamic_graph::ExceptionDynamic</class>
    <class kind="class">dynamic_graph::ExceptionFactory</class>
    <class kind="class">dynamic_graph::ExceptionFeature</class>
    <class kind="class">dynamic_graph::ExceptionSignal</class>
    <class kind="class">dynamic_graph::ExceptionTask</class>
    <class kind="class">dynamic_graph::ExceptionTools</class>
    <class kind="class">dynamic_graph::ExceptionYamlCpp</class>
    <class kind="struct">dynamic_graph::GlobalRos</class>
    <class kind="class">dynamic_graph::PeriodicCall</class>
    <class kind="class">dynamic_graph::RosPublish</class>
    <class kind="class">dynamic_graph::RosPythonInterpreter</class>
    <class kind="class">dynamic_graph::RosQueuedSubscribe</class>
    <class kind="class">dynamic_graph::RosRobotStatePublisher</class>
    <class kind="struct">dynamic_graph::RosRobotStatePublisherInternal</class>
    <class kind="class">dynamic_graph::RosRobotStatePublisherMt</class>
    <class kind="struct">dynamic_graph::RosRobotStatePublisherMtInternal</class>
    <class kind="class">dynamic_graph::RosSubscribe</class>
    <class kind="class">dynamic_graph::RosTfListener</class>
    <class kind="class">dynamic_graph::RosTime</class>
    <member kind="typedef">
      <type>std::chrono::steady_clock</type>
      <name>clock</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>aca70acb5331a18e090e49b3d85290a7e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::map&lt; std::string, dynamicgraph::Vector &gt;</type>
      <name>VectorDGMap</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a51212ed7fa4ae81e7b362a27f09b7ab8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>dynamicgraph::SignalTimeDependent&lt; int, int &gt;</type>
      <name>SignalOUT</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a9d80c350c95e161319d7a6e629ecdc4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>dynamicgraph::SignalPtr&lt; dynamicgraph::Vector, int &gt;</type>
      <name>SignalIN</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ae1463c695a6915ea3f9ab4311beb527a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::function&lt; void(int)&gt;</type>
      <name>callback_t</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>adf7d40f2a8d1425af80c14f90e58e961</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>realtime_tools::RealtimePublisher&lt; tf2_msgs::TFMessage &gt;</type>
      <name>TfRtPublisher</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ac8d567b9a3d1ab846ba2efdc1ff1e120</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>realtime_tools::RealtimePublisher&lt; sensor_msgs::JointState &gt;</type>
      <name>JointStateRtPublisher</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ae9ad83c8174a9aa5bc1688df02b4ee95</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>ros::NodeHandle &amp;</type>
      <name>ros_init</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ab01ece41a91a029cf335e28548cdfc06</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>ros::AsyncSpinner &amp;</type>
      <name>ros_spinner</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a0ab97e95b56e05d30fd3112f8dfcf8eb</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ros_shutdown</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a0a7d6cd6c123bd1852af188fc06ce4f7</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ros_shutdown</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a7d2045abc7e02fe4ee746c5cbb937b04</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ros_exist</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ab000cd6e1e6ed365a5a3e1adddf89dff</anchor>
      <arglist>(std::string node_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse_yaml_node</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a3473e2d5502f8a2bff6b43cbc2d35e07</anchor>
      <arglist>(const YAML::Node &amp;sensors_and_controls, VectorDGMap &amp;out_sensors_map, VectorDGMap &amp;out_motor_controls_map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>converter</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>aa00932c9efb8a607efd6997386d78680</anchor>
      <arglist>(D &amp;dst, const S &amp;src)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>converter</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a38ff488b8b21c0b4f4d7f44572fa4ee5</anchor>
      <arglist>(U &amp;dst, V &amp;src)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>DYNAMICGRAPH_FACTORY_ENTITY_PLUGIN</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>ac2b17f51aa9541c0b023291d4090be56</anchor>
      <arglist>(DeviceSimulator, &quot;DeviceSimulator&quot;)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static std::map&lt; std::string, std::unique_ptr&lt; GlobalRos &gt; &gt;</type>
      <name>GLOBAL_ROS_VAR</name>
      <anchorfile>namespacedynamic__graph.html</anchorfile>
      <anchor>a877a1ed0d2adf7f675abf17f70b936a6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>dynamic_graph::specific</name>
    <filename>namespacedynamic__graph_1_1specific.html</filename>
    <class kind="class">dynamic_graph::specific::Twist</class>
    <class kind="class">dynamic_graph::specific::Vector3</class>
  </compound>
  <compound kind="namespace">
    <name>dynamic_graph_manager</name>
    <filename>namespacedynamic__graph__manager.html</filename>
    <class kind="class">dynamic_graph_manager::SimpleDGM</class>
  </compound>
  <compound kind="namespace">
    <name>dynamicgraph</name>
    <filename>namespacedynamicgraph.html</filename>
    <namespace>dynamicgraph::command</namespace>
  </compound>
  <compound kind="namespace">
    <name>dynamicgraph::command</name>
    <filename>namespacedynamicgraph_1_1command.html</filename>
    <namespace>dynamicgraph::command::ros_state_publish</namespace>
  </compound>
  <compound kind="namespace">
    <name>dynamicgraph::command::ros_state_publish</name>
    <filename>namespacedynamicgraph_1_1command_1_1ros__state__publish.html</filename>
  </compound>
  <compound kind="page">
    <name>subpage_basic_control_graph</name>
    <title>5/ Basic Control Graph</title>
    <filename>subpage_basic_control_graph</filename>
    <docanchor file="subpage_basic_control_graph" title="5.1/ Good practice">control_sec_intro</docanchor>
    <docanchor file="subpage_basic_control_graph" title="5.2/ Writing a simple entity">control_sec_simple_entity</docanchor>
    <docanchor file="subpage_basic_control_graph" title="5.3/ Expose the entities to Python">control_sec_expose_entity</docanchor>
    <docanchor file="subpage_basic_control_graph" title="5.4/ Create the control graph entries and connect them to the robot">control_sec_load_graph</docanchor>
  </compound>
  <compound kind="page">
    <name>subpage_ci</name>
    <title>9/ Continuous integration</title>
    <filename>subpage_ci</filename>
  </compound>
  <compound kind="page">
    <name>subpage_debugging</name>
    <title>6/ Debugging the implementation</title>
    <filename>subpage_debugging</filename>
    <docanchor file="subpage_debugging" title="6.1/ Debugging Entity / Controller implementations">debug_sec_entity_impl</docanchor>
    <docanchor file="subpage_debugging" title="6.2/ Debugging Dynamic Graph Manager">debug_sec_dgm</docanchor>
  </compound>
  <compound kind="page">
    <name>subpage_demos</name>
    <title>10/ Demos</title>
    <filename>subpage_demos</filename>
  </compound>
  <compound kind="page">
    <name>subpage_installation</name>
    <title>2/ Installation Procedure</title>
    <filename>subpage_installation</filename>
    <docanchor file="subpage_installation" title="2.1/ Introduction">install_sec_introduction</docanchor>
    <docanchor file="subpage_installation" title="2.2/ Binary Installation">install_sec_binary</docanchor>
    <docanchor file="subpage_installation" title="2.2.1/ Install using the official image on UBUNTU 16.04">install_subsec_official_image</docanchor>
    <docanchor file="subpage_installation" title="2.2.2/ Do the same as the official image but install uniquely the dynamic graph.">install_subsec_binary</docanchor>
    <docanchor file="subpage_installation" title="2.2.3/ Troubleshooting">install_subsec_troubleshooting</docanchor>
    <docanchor file="subpage_installation" title="2.3/ From source Installation">install_sec_source</docanchor>
    <docanchor file="subpage_installation" title="2.3.1/ For python2">install_subsec_python2</docanchor>
    <docanchor file="subpage_installation" title="2.3.2/ For using python3 alongside python2">install_subsec_python2_3</docanchor>
    <docanchor file="subpage_installation" title="2.4/ Installation of dynamic graph manager">install_sec_dgm</docanchor>
  </compound>
  <compound kind="page">
    <name>subpage_launch</name>
    <title>3/ Start a Dynamic Graph Manager Executable</title>
    <filename>subpage_launch</filename>
  </compound>
  <compound kind="page">
    <name>subpage_motivation_history</name>
    <title>Motivation and history behind the implemention of this framework</title>
    <filename>subpage_motivation_history</filename>
  </compound>
  <compound kind="page">
    <name>subpage_plot</name>
    <title>5/ Oscilloscope / Plotting / Logging / Motor and control process timing</title>
    <filename>subpage_plot</filename>
    <docanchor file="subpage_plot" title="5.1/ Start and stop logging a trace">plot_sec_tracer</docanchor>
    <docanchor file="subpage_plot" title="5.2/ Adding new signals to the tracer (for logging) and ros">plot_sec_add_trace</docanchor>
    <docanchor file="subpage_plot" title="5.3/ Opening dynamic graph traces in RAI">plot_sec_add_rai</docanchor>
    <docanchor file="subpage_plot" title="5.4/ How to open rqt_plot">plot_sec_add_rqt_plot</docanchor>
    <docanchor file="subpage_plot" title="5.5/ Troubleshooting with rqt in general:">plot_sec_add_rqt_troubleshooting</docanchor>
    <docanchor file="subpage_plot" title="5.6/ Logging of motor and control process timing">plot_sec_add_timing</docanchor>
    <docanchor file="subsubpage_stl">simplify_cad</docanchor>
  </compound>
  <compound kind="page">
    <name>subpage_robot_dashboard</name>
    <title>8/ Robot dashboard</title>
    <filename>subpage_robot_dashboard</filename>
    <docanchor file="subpage_robot_dashboard" title="8.1/ Creating a dashboard">dashbaord_sec_create</docanchor>
    <docanchor file="subpage_robot_dashboard" title="8.2/ Launching the dashboard">dashbaord_sec_launch</docanchor>
  </compound>
  <compound kind="page">
    <name>subpage_robot_properties</name>
    <title>4/ Implementing a robot in dynamic graph manager</title>
    <filename>subpage_robot_properties</filename>
  </compound>
  <compound kind="page">
    <name>subsubpage_robot_package</name>
    <title>4.1/ Create a robot/object/environment package</title>
    <filename>subsubpage_robot_package</filename>
    <docanchor file="subsubpage_robot_package" title="4.1.1/ Context">robot_properties_context</docanchor>
    <docanchor file="subsubpage_robot_package" title="4.1.2/ Continuous integration:">robot_properties_ci</docanchor>
  </compound>
  <compound kind="page">
    <name>subsubpage_stl</name>
    <title>4.2/ How to generate STL files for visualisation</title>
    <filename>subsubpage_stl</filename>
    <docanchor file="subsubpage_stl">coordinate_system</docanchor>
    <docanchor file="subsubpage_stl">save_stl_files</docanchor>
  </compound>
  <compound kind="page">
    <name>subsubpage_stl_to_obj</name>
    <title>4.3/ Convert the stl files in obj files</title>
    <filename>subsubpage_stl_to_obj</filename>
    <docanchor file="subsubpage_stl_to_obj" title="4.3.1/ Download the scripts">stl_obj_sec_download</docanchor>
    <docanchor file="subsubpage_stl_to_obj" title="4.3.2/ Compile the package with catkin">stl_obj_sec_compilation</docanchor>
    <docanchor file="subsubpage_stl_to_obj" title="4.3.3/ Run the conversion script">stl_obj_sec_run</docanchor>
    <docanchor file="subsubpage_stl_to_obj" title="4.3.3/ Typical use.">stl_obj_sec_usage</docanchor>
  </compound>
  <compound kind="page">
    <name>subsubpage_urdf</name>
    <title>4.4/ HowTo create URDF files</title>
    <filename>subsubpage_urdf</filename>
    <docanchor file="subsubpage_urdf">urdf</docanchor>
  </compound>
  <compound kind="page">
    <name>subsubpage_implement_dgm</name>
    <title>4.5/ Implement the dynamic_graph_manager specific to your robot</title>
    <filename>subsubpage_implement_dgm</filename>
    <docanchor file="subsubpage_implement_dgm" title="4.4.1/ Reminder">dgm_impl_sec_reminder</docanchor>
    <docanchor file="subsubpage_implement_dgm" title="4.4.2/ Implementation details">dgm_impl_sec_impl_details</docanchor>
    <docanchor file="subsubpage_implement_dgm" title="4.4.2.1/ The YAML file and the Device.">dgm_impl_sec_yaml_file</docanchor>
    <docanchor file="subsubpage_implement_dgm" title="4.4.2.2/ The class inheriting from the DynamicGraphManager">dgm_impl_sec_hineritance</docanchor>
    <docanchor file="subsubpage_implement_dgm" title="4.4.2.3/ The main file">dgm_impl_sec_main</docanchor>
    <docanchor file="subsubpage_implement_dgm" title="4.4.3/ The hardware asynchronous commands:">dgm_impl_sec_hwc_commands</docanchor>
    <docanchor file="subsubpage_implement_dgm" title="4.4.3/ The safety mode:">dgm_impl_sec_safety_mode</docanchor>
  </compound>
  <compound kind="page">
    <name>subpage_robot_simulation</name>
    <title>7/ Interfacing with a robot simulator</title>
    <filename>subpage_robot_simulation</filename>
    <docanchor file="subpage_robot_simulation" title="7.1/ Simulator implementation in C++">simu_sec_cpp</docanchor>
    <docanchor file="subpage_robot_simulation" title="7.2/ Device in python">simu_sec_python</docanchor>
  </compound>
  <compound kind="page">
    <name>md_readme</name>
    <title>dynamic_graph_manager</title>
    <filename>md_readme</filename>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>Dynamic Graph Manager</title>
    <filename>index</filename>
    <docanchor file="index" title="1/ General Introduction">intro_sec_general_introduction</docanchor>
    <docanchor file="index" title="1.1/ Introduction">intro_sec_introduction</docanchor>
    <docanchor file="index" title="1.2/ General knowledge about the dynamic graph">intro_sec_dg_general_knowledge</docanchor>
    <docanchor file="index" title="1.2.1/ The dynamic-graph is ... a graph">intro_subsec_graph</docanchor>
    <docanchor file="index" title="1.2.2/ A bit of vocabulary">intro_subsec_vocabulary</docanchor>
    <docanchor file="index" title="1.2.3/ Typical use of the dynamic graph / Hardware communication">intro_subsec_use</docanchor>
    <docanchor file="index" title="1.3/ How does it works?">intro_sec_how_it_works</docanchor>
    <docanchor file="index" title="1.3.1/ The pool of entities">intro_subsec_pool_entities</docanchor>
    <docanchor file="index" title="1.3.2/ Back propagation of the signal call">intro_subsec_back_propagation</docanchor>
    <docanchor file="index" title="1.3.3/ The concept of a command">intro_subsec_commands</docanchor>
    <docanchor file="index" title="1.3.4/ C++ controller, but dynamic Python setup">intro_subsec_python</docanchor>
    <docanchor file="index" title="1.4/ The dynamic_graph_manager">intro_sec_dgm</docanchor>
    <docanchor file="index" title="1.5/ Structure of the documentation">intro_sec_structure</docanchor>
  </compound>
</tagfile>
