<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>yaml_cpp_fwd.hpp</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/yaml_cpp_catkin/include/yaml_cpp_catkin/</path>
    <filename>yaml__cpp__fwd_8hpp</filename>
    <includes id="yaml__eigen_8h" name="yaml_eigen.h" local="yes" imported="no">yaml_cpp_catkin/yaml_eigen.h</includes>
    <includes id="yaml__tools_8hpp" name="yaml_tools.hpp" local="yes" imported="no">yaml_cpp_catkin/yaml_tools.hpp</includes>
  </compound>
  <compound kind="file">
    <name>yaml_eigen.h</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/yaml_cpp_catkin/include/yaml_cpp_catkin/</path>
    <filename>yaml__eigen_8h</filename>
    <class kind="struct">robot_math::MovableEigenVector</class>
    <class kind="struct">robot_math::MovableEigenMatrix</class>
    <class kind="struct">YAML::EigenVectorConverter</class>
    <class kind="struct">YAML::EigenMatrixConverter</class>
    <class kind="struct">YAML::convert&lt; Eigen::Matrix&lt; Scalar, Rows, Cols, Align, RowsAtCompileTime, ColsAtCompileTime &gt; &gt;</class>
    <class kind="struct">YAML::convert&lt; robot_math::MovableEigenVector&lt; T &gt; &gt;</class>
    <class kind="struct">YAML::convert&lt; Eigen::Quaterniond &gt;</class>
  </compound>
  <compound kind="file">
    <name>yaml_tools.hpp</name>
    <path>/workspace/software/workspace/src/catkin/core_robotics/yaml_cpp_catkin/include/yaml_cpp_catkin/</path>
    <filename>yaml__tools_8hpp</filename>
    <includes id="yaml__eigen_8h" name="yaml_eigen.h" local="no" imported="no">yaml_cpp_catkin/yaml_eigen.h</includes>
    <member kind="function" static="yes">
      <type>static YamlType</type>
      <name>ReadParameter</name>
      <anchorfile>yaml__tools_8hpp.html</anchorfile>
      <anchor>aa37a27d8a4ee6a8ec1e16eb0208763e4</anchor>
      <arglist>(const YAML::Node &amp;node, const std::string &amp;name)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>ReadParameter</name>
      <anchorfile>yaml__tools_8hpp.html</anchorfile>
      <anchor>a07d91dd29a0e49d11dac96037b626b20</anchor>
      <arglist>(const YAML::Node &amp;node, const std::string &amp;name, YamlType &amp;parameter, bool optional=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>readParameter</name>
      <anchorfile>yaml__tools_8hpp.html</anchorfile>
      <anchor>a163f0c913b2e1d92245060b694dc25ad</anchor>
      <arglist>(const YAML::Node &amp;node, const std::string &amp;name, YamlType &amp;parameter, bool optional=false)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>YAML::convert&lt; Eigen::Matrix&lt; Scalar, Rows, Cols, Align, RowsAtCompileTime, ColsAtCompileTime &gt; &gt;</name>
    <filename>structYAML_1_1convert_3_01Eigen_1_1Matrix_3_01Scalar_00_01Rows_00_01Cols_00_01Align_00_01RowsAtC8665abb6da4eb6935869b0ee422ba9ce.html</filename>
    <templarg></templarg>
    <templarg>Rows</templarg>
    <templarg>Cols</templarg>
    <templarg>Align</templarg>
    <templarg>RowsAtCompileTime</templarg>
    <templarg>ColsAtCompileTime</templarg>
  </compound>
  <compound kind="struct">
    <name>YAML::convert&lt; Eigen::Quaterniond &gt;</name>
    <filename>structYAML_1_1convert_3_01Eigen_1_1Quaterniond_01_4.html</filename>
  </compound>
  <compound kind="struct">
    <name>YAML::convert&lt; robot_math::MovableEigenVector&lt; T &gt; &gt;</name>
    <filename>structYAML_1_1convert_3_01robot__math_1_1MovableEigenVector_3_01T_01_4_01_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>YAML::EigenMatrixConverter</name>
    <filename>structYAML_1_1EigenMatrixConverter.html</filename>
    <templarg></templarg>
    <templarg>Rows</templarg>
    <templarg>Cols</templarg>
    <templarg>Align</templarg>
    <templarg>RowsAtCompileTime</templarg>
    <templarg>ColsAtCompileTime</templarg>
  </compound>
  <compound kind="struct">
    <name>YAML::EigenVectorConverter</name>
    <filename>structYAML_1_1EigenVectorConverter.html</filename>
    <templarg></templarg>
    <templarg>Rows</templarg>
    <templarg>Cols</templarg>
    <templarg>Align</templarg>
    <templarg>RowsAtCompileTime</templarg>
    <templarg>ColsAtCompileTime</templarg>
  </compound>
  <compound kind="struct">
    <name>robot_math::MovableEigenMatrix</name>
    <filename>structrobot__math_1_1MovableEigenMatrix.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="struct">
    <name>robot_math::MovableEigenVector</name>
    <filename>structrobot__math_1_1MovableEigenVector.html</filename>
    <templarg></templarg>
  </compound>
</tagfile>
