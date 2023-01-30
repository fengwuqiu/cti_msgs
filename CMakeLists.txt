cmake_minimum_required(VERSION 3.16)
project(cti_msgs)

# Default to C99
if (NOT CMAKE_C_STANDARD)
    set(CMAKE_C_STANDARD 99)
endif ()

# Default to C++17
if (NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 17)
endif ()

if (CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wall -Wextra -Wpedantic -fdiagnostics-color=always)
endif ()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(diagnostic_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)

set(msg_files
        "msg/AllSensorStatus.msg"
        "msg/AutoPath.msg"
        "msg/AutoPoseStamped.msg"
        "msg/AutoTransmission.msg"
        "msg/BackStageSignalState.msg"
        "msg/BaseMap.msg"
        "msg/BatteryCell.msg"
        "msg/BatteryCellsState.msg"
        "msg/BatteryState.msg"
        "msg/BoardVersion.msg"
        "msg/BoardVersionData.msg"
        "msg/BoundingBox.msg"
        "msg/BoxSensorTabState.msg"
        "msg/BoxState.msg"
        "msg/BuildingRobotState.msg"
        "msg/BrushCmd.msg"
        "msg/Centroids.msg"
        "msg/ChangeFlag.msg"
        "msg/CloudCluster.msg"
        "msg/CloudClusterArray.msg"
        "msg/ConfigNdt.msg"
        "msg/ConfigPointsConcatFilter.msg"
        "msg/ConfigRayGroundFilter.msg"
        "msg/ConfigRingGroundFilter.msg"
        "msg/ConfigVoxelGridFilter.msg"
        "msg/Data.msg"
        "msg/DataArray.msg"
        "msg/DetectedObject.msg"
        "msg/DetectedObjectArray.msg"
        "msg/DistinguishState.msg"
        "msg/DustbinControl.msg"
        "msg/DustbinControlNew.msg"
        "msg/DustbinState.msg"
        "msg/DustbinStateNew.msg"
        "msg/DustboxControl.msg"
        "msg/DustboxState.msg"
        "msg/DynamicObject.msg"
        "msg/DynamicObjectArray.msg"
        "msg/DynamicObjectWithFeature.msg"
        "msg/DynamicObjectWithFeatureArray.msg"
        "msg/ElevatorCmd.msg"
        "msg/ErrorCode.msg"
        "msg/ErrorStatus.msg"
        "msg/ErrorStatusArray.msg"
        "msg/Feature.msg"
        "msg/FrenetPoint.msg"
        "msg/GnssRTK.msg"
        "msg/GuidingPoint.msg"
        "msg/HumanGestureControl.msg"
        "msg/ImageObject.msg"
        "msg/ImageObjectArrayStamped.msg"
        "msg/ImageObjLocate.msg"
        "msg/ImageObjLocateArrayStamped.msg"
        "msg/ImageRect.msg"
        "msg/ImuWit.msg"
        "msg/Lane.msg"
        "msg/LaneArray.msg"
        "msg/LaneSegment.msg"
        "msg/LiftState.msg"
        "msg/MapDataConfig.msg"
        "msg/MapInt.msg"
        "msg/NarrowRoad.msg"
        "msg/NarrowRoadState.msg"
        "msg/NavPath.msg"
        "msg/NavPoseStamped.msg"
        "msg/NavProtoContent.msg"
        "msg/NavProtoHeader.msg"
        "msg/NavProtoRequest.msg"
        "msg/NavProtoRequestStamped.msg"
        "msg/NavProtoResponse.msg"
        "msg/NavProtoResponseStamped.msg"
        "msg/NdtStat.msg"
        "msg/ObstaclePrediction.msg"
        "msg/ObstaclePredictionArray.msg"
        "msg/OrbPose.msg"
        "msg/OrbPoseStamped.msg"
        "msg/PairInt.msg"
        "msg/Passage.msg"
        "msg/PathPoint.msg"
        "msg/PerceptionObstacle.msg"
        "msg/PerceptionObstacleArray.msg"
        "msg/PerceptionObstacles.msg"
        "msg/PerceptionObstacleWithPC.msg"
        "msg/PerceptionObstacleWithPCArray.msg"
        "msg/PointCloudObject.msg"
        "msg/PointCloudObjectArrayStamped.msg"
        "msg/PolygonDetection.msg"
        "msg/PolygonList.msg"
        "msg/PredictedPath.msg"
        "msg/Range.msg"
        "msg/RoadSegment.msg"
        "msg/RoadType.msg"
        "msg/RoadTypeProperty.msg"
        "msg/RobotCmd.msg"
        "msg/RobotDescription.msg"
        "msg/RobotLocalizerInfo.msg"
        "msg/RobotLocalizerState.msg"
        "msg/RobotNotifyState.msg"
        "msg/RobotParamConfig.msg"
        "msg/RobotState.msg"
        "msg/RobotVersionDisplay.msg"
        "msg/Rtcm.msg"
        "msg/RuptTable.msg"
        "msg/RuptTableArray.msg"
        "msg/SafeTurnInfo.msg"
        "msg/SceneChange.msg"
        "msg/SelectArea.msg"
        "msg/Semantic.msg"
        "msg/SensorLidarState.msg"
        "msg/SensorState.msg"
        "msg/Shape.msg"
        "msg/SignalRequest.msg"
        "msg/Sins.msg"
        "msg/SoundRequest.msg"
        "msg/StatePerception.msg"
        "msg/SteerInterval.msg"
        "msg/State.msg"
        "msg/SystemState.msg"
        "msg/SystemStatus.msg"
        "msg/TabState.msg"
        "msg/TargetPose.msg"
        "msg/Track.msg"
        "msg/TrackArray.msg"
        "msg/TrafficLightStatus.msg"
        "msg/TrajectoryPoint.msg"
        "msg/UnperpanState.msg"
        "msg/VehicleCtlRunInfo.msg"
        "msg/VehicleDynamicParam.msg"
        "msg/VehicleManageInfo.msg"
        "msg/VehicleManageInfoCollection.msg"
        "msg/VehicleModel.msg"
        "msg/VerticalLidar.msg"
        "msg/VerticalLidarState.msg"
        "msg/VisualMark.msg"
        "msg/VisualMarks.msg"
        "msg/WayPoint.msg"
        "msg/SystemStatusInfo.msg"
        "msg/CpuStatus.msg"
        "msg/LoadAverage.msg"
        "msg/MemStatus.msg"
        "msg/ProcessStatus.msg"
        "msg/NetStatus.msg"
        "msg/GpuStatus.msg"
        "msg/IpStatus.msg"
        "msg/PandarPacket.msg"
        "msg/PandarScan.msg"
        "msg/Alarm.msg"
        "msg/AlarmArray.msg"
        )

set(srv_files
        "srv/AutoPathService.srv"
        "srv/BoxOperationService.srv"
        "srv/Gps2NdtServiceArray.srv"
        "srv/NavPathService.srv"
        "srv/Ndt2GpsServiceArray.srv"
        "srv/PathService.srv"
        "srv/PoseForAttributeType.srv"
        "srv/PolygonDetectionService.srv"
        "srv/SmoothPathService.srv"
        "srv/TargetService.srv"
        "srv/TrafficLightService.srv"
        )

rosidl_generate_interfaces(${PROJECT_NAME}
        ${msg_files} ${srv_files}
        DEPENDENCIES
        builtin_interfaces
        diagnostic_msgs
        geometry_msgs
        nav_msgs
        sensor_msgs
        std_msgs
        )

ament_export_dependencies(rosidl_default_generators)
ament_export_dependencies(rosidl_default_runtime)

ament_package()
