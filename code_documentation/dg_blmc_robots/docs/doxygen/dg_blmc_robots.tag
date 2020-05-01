<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>common_header.hpp</name>
    <path>/home/mnaveau/devel/workspace/src/catkin/robots/dg_blmc_robots/include/dg_blmc_robots/</path>
    <filename>common__header_8hpp</filename>
  </compound>
  <compound kind="file">
    <name>dgm_single_motor.hpp</name>
    <path>/home/mnaveau/devel/workspace/src/catkin/robots/dg_blmc_robots/include/dg_blmc_robots/</path>
    <filename>dgm__single__motor_8hpp</filename>
    <class kind="class">dg_blmc_robots::DGMSingleMotor</class>
  </compound>
  <compound kind="file">
    <name>dgm_stuggihop.hpp</name>
    <path>/home/mnaveau/devel/workspace/src/catkin/robots/dg_blmc_robots/include/dg_blmc_robots/</path>
    <filename>dgm__stuggihop_8hpp</filename>
    <class kind="class">dg_blmc_robots::DGMStuggihop</class>
  </compound>
  <compound kind="file">
    <name>dgm_solo_simple_simu.cpp</name>
    <path>/home/mnaveau/devel/workspace/src/catkin/robots/dg_blmc_robots/src/</path>
    <filename>dgm__solo__simple__simu_8cpp</filename>
  </compound>
  <compound kind="file">
    <name>dgm_stuggihop.cpp</name>
    <path>/home/mnaveau/devel/workspace/src/catkin/robots/dg_blmc_robots/src/</path>
    <filename>dgm__stuggihop_8cpp</filename>
    <includes id="dgm__stuggihop_8hpp" name="dgm_stuggihop.hpp" local="yes" imported="no">dg_blmc_robots/dgm_stuggihop.hpp</includes>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::DGMQuadrupedSimu</name>
    <filename>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</filename>
    <member kind="function">
      <type></type>
      <name>DGMQuadrupedSimu</name>
      <anchorfile>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</anchorfile>
      <anchor>a6dd0768f9887c92a9fe26839b73771a3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DGMQuadrupedSimu</name>
      <anchorfile>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</anchorfile>
      <anchor>a5aabe831d173f9fc58c420b0ba33330f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_in_safety_mode</name>
      <anchorfile>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</anchorfile>
      <anchor>a89ae101b6a85455885d2ef9d7441941c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</anchorfile>
      <anchor>a1a5010a4279e2118c6d500427a223d07</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</anchorfile>
      <anchor>a6804388dddf35aa3980ec87c44606a14</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</anchorfile>
      <anchor>a431bbaae92470e69562c2749e35a75c8</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>Vector8d</type>
      <name>motor_target_currents_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMQuadrupedSimu.html</anchorfile>
      <anchor>a664b79890bc32dca86e185d09f8aafc4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::DGMSingleMotor</name>
    <filename>classdg__blmc__robots_1_1DGMSingleMotor.html</filename>
    <member kind="function">
      <type></type>
      <name>DGMSingleMotor</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>a3b2a7165e988dd54315ae47fede7f621</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DGMSingleMotor</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>affcf3def46050538d1b84f310843a29a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>af24b10d315284b3cf36a78155b193001</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>af7af9d26046e101fcdbab65507004a48</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>a98bc6c87faf9121ef5fa7f1ba421d63e</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::SingleMotor</type>
      <name>single_motor_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>abd548dc88f1ded74bafea823244de422</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>Vector1d</type>
      <name>ctrl_joint_torques_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>a6c092a7682bf6511d68c86f4b0ba51ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>bool</type>
      <name>was_in_safety_mode_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSingleMotor.html</anchorfile>
      <anchor>af341e50979dab7f63f4cf9b27e3fd772</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::DGMSolo12</name>
    <filename>classdg__blmc__robots_1_1DGMSolo12.html</filename>
    <member kind="function">
      <type></type>
      <name>DGMSolo12</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>af723971f57c6acb3168aa08876e3798e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DGMSolo12</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a1e3ebce3491c53013e089883393c3338</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_in_safety_mode</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>aa6302b840e6e3c86b9fc4d9bf05a21ef</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a4d5af277b58accfedcadbac524b23efc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a407925fdfb633e0bfab911c90ca01c04</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a8e7ed8c9ee0a69f3370c502ccf47d9c9</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>calibrate_joint_position_callback</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>af261744a5d36308874dc08d660711280</anchor>
      <arglist>(dg_blmc_robots::JointCalibration::Request &amp;req, dg_blmc_robots::JointCalibration::Response &amp;res)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>calibrate_joint_position</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a63196391c1aee97f94c8c2f3a66b4a0b</anchor>
      <arglist>(const blmc_robots::Vector12d &amp;zero_to_index_angle)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Solo12</type>
      <name>solo_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a7c8edf5752598bafc7cd33380910e5ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Vector12d</type>
      <name>ctrl_joint_torques_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a8eaf78b77ea59bedbbcf23aabcdd66e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>bool</type>
      <name>was_in_safety_mode_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>a2a5156d24e66e1af93bc94f5f03ccb67</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Vector12d</type>
      <name>zero_to_index_angle_from_file_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo12.html</anchorfile>
      <anchor>abb9b4edf8c97cfecbaf87b6adaad8ad5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::DGMSolo8</name>
    <filename>classdg__blmc__robots_1_1DGMSolo8.html</filename>
    <member kind="function">
      <type></type>
      <name>DGMSolo8</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>ac60de8a48c9fcf7d1f769dab90753e2b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DGMSolo8</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>a260d27a6376606bc72e07caf445435d2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>ac2d419f12dd51ea7cf5b429f766e21c2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>a5c024946d27b7b52b3b6cc568efe96df</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>a7b6f7771158eada4f93cf5d156fbe9a9</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>calibrate_joint_position_callback</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>add051134152340a82e5466e186d15c0e</anchor>
      <arglist>(dg_blmc_robots::JointCalibration::Request &amp;req, dg_blmc_robots::JointCalibration::Response &amp;res)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>calibrate_joint_position</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>adc94f7989828834b503739c51d4af3fe</anchor>
      <arglist>(const blmc_robots::Vector8d &amp;zero_to_index_angle)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Solo8</type>
      <name>solo_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>a65ce342929838851ee3fe9f0f9633088</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Vector8d</type>
      <name>ctrl_joint_torques_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>a81971c21240a172c936c56cdfbf0a02c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>bool</type>
      <name>was_in_safety_mode_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>a4ab54e51e268880d3e34144fbb1ee7a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Vector8d</type>
      <name>zero_to_index_angle_from_file_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8.html</anchorfile>
      <anchor>a91b31486cb3fe3de16043f7fb4d6cc74</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::DGMSolo8TI</name>
    <filename>classdg__blmc__robots_1_1DGMSolo8TI.html</filename>
    <member kind="function">
      <type></type>
      <name>DGMSolo8TI</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>abee90d8f11708199fca29849b559cc81</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DGMSolo8TI</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>adc55a8663b9682a54c50dea30ef66eaf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>a2a21728cb1b63fa63242514d09c2e7bf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>afd126d69bc1d226c2666a4653e306b46</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>aef367ff385590dce6ca8fd4d8b10e813</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>calibrate_joint_position_callback</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>ab862135f110f2b497931892f6abbb879</anchor>
      <arglist>(dg_blmc_robots::JointCalibration::Request &amp;req, dg_blmc_robots::JointCalibration::Response &amp;res)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>calibrate_joint_position</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>a9b4b07438fdce74f3875576ad8b38b9b</anchor>
      <arglist>(const blmc_robots::Vector8d &amp;zero_to_index_angle)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Solo8TI</type>
      <name>solo_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>ae1fd04476b371df57db40d6a97783731</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Vector8d</type>
      <name>ctrl_joint_torques_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>accfae6534d5201f28278eeba0febb22e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>bool</type>
      <name>was_in_safety_mode_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>a2f99efb27e8260c0f900a96e67e810db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Vector8d</type>
      <name>zero_to_index_angle_from_file_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMSolo8TI.html</anchorfile>
      <anchor>a05609f544243050ecac91ec55c9d7066</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::DGMStuggihop</name>
    <filename>classdg__blmc__robots_1_1DGMStuggihop.html</filename>
    <member kind="function">
      <type></type>
      <name>DGMStuggihop</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>a00d09c7496216833d0bbf9528dc91bf1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DGMStuggihop</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>abf9d5debbb1dfd891f721afaf37aaa7b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>ab19867edf16d958dbdc053f719b8c328</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>a0a54f99691e07866000b28c028947957</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>a17b70b0c18502cc60461b94f0ca2148b</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_in_safety_mode</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>a5834264acad3d97e9fb5cdf9c404b875</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Stuggihop</type>
      <name>stuggihop_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>a70126fb0319274141ab4a6193e7c7121</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>Eigen::Vector2d</type>
      <name>ctrl_joint_torques_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>afb2035bb08deca1f64ec1284dcf8dfff</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>bool</type>
      <name>was_in_safety_mode_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMStuggihop.html</anchorfile>
      <anchor>ac2491e5f7993fc8d1bcbc7af4da69f86</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::DGMTeststand</name>
    <filename>classdg__blmc__robots_1_1DGMTeststand.html</filename>
    <member kind="function">
      <type></type>
      <name>DGMTeststand</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>ae6b6e00fbd3460f7083977ae9befb6fd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DGMTeststand</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a8699f157b5a05c92a5de2b2c80ba70af</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initialize_hardware_communication_process</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a8495e1f1eb764ff3118d0e8dc60bc686</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get_sensors_to_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>ac0f85de90afcf35c01930f3504c8ac0e</anchor>
      <arglist>(dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_motor_controls_from_map</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a8b0ec086e17a6aae248c5c05014ad8a5</anchor>
      <arglist>(const dynamic_graph::VectorDGMap &amp;map)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>is_in_safety_mode</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a90fd2d9a7e579cbeb9daf2f0ba0d2a02</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>calibrate_joint_position_callback</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a133087f3899672101df62fbf95fac292</anchor>
      <arglist>(dg_blmc_robots::JointCalibration::Request &amp;req, dg_blmc_robots::JointCalibration::Response &amp;res)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>void</type>
      <name>calibrate_joint_position</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a0bce1340d617bfd6665cebef4d091ab1</anchor>
      <arglist>(const Eigen::Vector2d &amp;zero_to_index_angle)</arglist>
    </member>
    <member kind="variable" protection="private">
      <type>blmc_robots::Teststand</type>
      <name>teststand_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a682499397e16186076999d8705e12c95</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>Eigen::Vector2d</type>
      <name>ctrl_joint_torques_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a7c5db196b671570171458720ea4341a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>Eigen::Vector2d</type>
      <name>zero_to_index_angle_from_file_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a788ef9391e891af10ab9b76f18139e5c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="private">
      <type>bool</type>
      <name>was_in_safety_mode_</name>
      <anchorfile>classdg__blmc__robots_1_1DGMTeststand.html</anchorfile>
      <anchor>a5821be382bfd2ec8b5bb668b2aacc2ea</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::solo::solo_bullet::QuadrupedBulletRobot</name>
    <filename>classdg__blmc__robots_1_1solo_1_1solo__bullet_1_1QuadrupedBulletRobot.html</filename>
    <base>dg_blmc_robots::solo::solo_base_bullet::SoloBaseRobot</base>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::solo::solo12_bullet::Solo12BulletRobot</name>
    <filename>classdg__blmc__robots_1_1solo_1_1solo12__bullet_1_1Solo12BulletRobot.html</filename>
    <base>dg_blmc_robots::solo::solo_base_bullet::SoloBaseRobot</base>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::solo::solo_base_bullet::SoloBaseRobot</name>
    <filename>classdg__blmc__robots_1_1solo_1_1solo__base__bullet_1_1SoloBaseRobot.html</filename>
    <member kind="function">
      <type>def</type>
      <name>sim2signal_</name>
      <anchorfile>classdg__blmc__robots_1_1solo_1_1solo__base__bullet_1_1SoloBaseRobot.html</anchorfile>
      <anchor>aec775b51651007698dde474e4ff5a573</anchor>
      <arglist>(self)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>reset_state</name>
      <anchorfile>classdg__blmc__robots_1_1solo_1_1solo__base__bullet_1_1SoloBaseRobot.html</anchorfile>
      <anchor>af007664c1b5587db59a8ac8f5507fdc7</anchor>
      <arglist>(self, q, dq)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>set_gravity</name>
      <anchorfile>classdg__blmc__robots_1_1solo_1_1solo__base__bullet_1_1SoloBaseRobot.html</anchorfile>
      <anchor>a57f5595c15e6c4382da54ac0e42370aa</anchor>
      <arglist>(self, vec)</arglist>
    </member>
    <member kind="variable">
      <type></type>
      <name>signal_name</name>
      <anchorfile>classdg__blmc__robots_1_1solo_1_1solo__base__bullet_1_1SoloBaseRobot.html</anchorfile>
      <anchor>ae7996643d55ee9abe0a7a844cdd64177</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>stuggihop_bullet::StuggihopBulletRobot</name>
    <filename>classstuggihop__bullet_1_1StuggihopBulletRobot.html</filename>
    <member kind="function">
      <type>def</type>
      <name>sim2signal_</name>
      <anchorfile>classstuggihop__bullet_1_1StuggihopBulletRobot.html</anchorfile>
      <anchor>af75d6c773ccea849139a291173c0af09</anchor>
      <arglist>(self)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>reset_state</name>
      <anchorfile>classstuggihop__bullet_1_1StuggihopBulletRobot.html</anchorfile>
      <anchor>aea04a3ddb2665ed7aa19c81206c95bf7</anchor>
      <arglist>(self, q, dq)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>set_gravity</name>
      <anchorfile>classstuggihop__bullet_1_1StuggihopBulletRobot.html</anchorfile>
      <anchor>ae497030ea6a7849f0a6bd6fb881f3935</anchor>
      <arglist>(self, vec)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::teststand::teststand_bullet::TeststandBulletRobot</name>
    <filename>classdg__blmc__robots_1_1teststand_1_1teststand__bullet_1_1TeststandBulletRobot.html</filename>
    <member kind="function">
      <type>def</type>
      <name>set_gravity</name>
      <anchorfile>classdg__blmc__robots_1_1teststand_1_1teststand__bullet_1_1TeststandBulletRobot.html</anchorfile>
      <anchor>a961e8a9d4f6cc368503cf0923eb80940</anchor>
      <arglist>(self, vec)</arglist>
    </member>
    <member kind="function">
      <type>def</type>
      <name>reset_state</name>
      <anchorfile>classdg__blmc__robots_1_1teststand_1_1teststand__bullet_1_1TeststandBulletRobot.html</anchorfile>
      <anchor>acbb1f3051c8d20cd8fec0126f3b93246</anchor>
      <arglist>(self, q, dq)</arglist>
    </member>
    <member kind="function" protection="private">
      <type>def</type>
      <name>_sim2signal</name>
      <anchorfile>classdg__blmc__robots_1_1teststand_1_1teststand__bullet_1_1TeststandBulletRobot.html</anchorfile>
      <anchor>aff24fbcd5ded6221c7c666affd0bf613</anchor>
      <arglist>(self)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>dg_blmc_robots::vicon_client_bullet::ViconClientEntityBullet</name>
    <filename>classdg__blmc__robots_1_1vicon__client__bullet_1_1ViconClientEntityBullet.html</filename>
  </compound>
  <compound kind="page">
    <name>md_readme</name>
    <title>DG BLMC ROBOTS</title>
    <filename>md_readme</filename>
  </compound>
</tagfile>
