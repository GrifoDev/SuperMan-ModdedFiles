.class public Lcom/samsung/android/contextaware/ContextAwareManager;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/ContextAwareManager$1;,
        Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    }
.end annotation


# static fields
.field public static final ABNORMAL_PRESSURE_MONITOR:I

.field public static final ABNORMAL_SHOCK_SERVICE:I

.field public static final ACCELEROMETER_SENSOR_SERVICE:I

.field public static final ACTIVE_TIME_SERVICE:I

.field public static final ACTIVITY_CALIBRATION_SERVICE:I

.field public static final ACTIVITY_TRACKER_BATCH_SERVICE:I

.field public static final ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_SERVICE:I

.field public static final ANY_MOTION_DETECTOR_SERVICE:I

.field public static final APDR_SERVICE:I

.field public static final AUTO_BRIGHTNESS_SERVICE:I

.field public static final AUTO_ROTATION_SERVICE:I

.field public static final BEST_LOCATION_SERVICE:I

.field public static final BOTTOM_FLAT_DETECTOR_SERVICE:I

.field public static final BOUNCE_LONG_MOTION_SERVICE:I

.field public static final BOUNCE_SHORT_MOTION_SERVICE:I

.field public static final CALL_MOTION_SERVICE:I

.field public static final CALL_POSE_SERVICE:I

.field public static final CAPTURE_MOTION_SERVICE:I

.field public static final CARE_GIVER_SERVICE:I

.field public static final CARRYING_STATUS_MONITOR_SERVICE:I

.field public static final CH_LOC_TRIGGER_SERVICE:I

.field public static final CMD_PROCESS_FAULT_DETECTION:I

.field public static final CURRENT_STATUS_FOR_POSITIONING_SERVICE:I = 0x0

.field public static final DEFAULT_VERSION:I = 0x1

.field public static final DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

.field public static final DIRECT_CALL_SERVICE:I

.field public static final DUAL_DISPLAY_ANGLE_SERVICE:I

.field public static final EAD_SERVICE:I

.field public static final EXERCISE_SERVICE:I

.field public static final FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

.field public static final FLAT_MOTION_SERVICE:I

.field public static final FLIP_COVER_ACTION_SERVICE:I

.field public static final FREE_FALL_DETECTION_SERVICE:I

.field public static final GESTURE_APPROACH_SERVICE:I

.field public static final GYROSCOPE_SENSOR_SERVICE:I

.field public static final GYRO_TEMPERATURE_SERVICE:I

.field public static final HALL_SENSOR_SERVICE:I

.field public static final LIFE_LOG_COMPONENT_SERVICE:I

.field public static final LIFE_LOG_SERVICE:I

.field public static final LOCATION_SERVICE:I

.field public static final LOG_LEVEL_DEBUG:I

.field public static final LOG_LEVEL_ERROR:I

.field public static final LOG_LEVEL_INFO:I

.field public static final LOG_LEVEL_TRACE:I

.field public static final LOG_LEVEL_WARN:I

.field public static final LPP_SERVICE:I

.field public static final MAGNETIC_SENSOR_SERVICE:I

.field public static final MAIN_SCREEN_DETECTION_SERVICE:I

.field public static final MOTION_SERVICE:I

.field public static final MOVEMENT_ALERT_SERVICE:I

.field public static final MOVEMENT_FOR_POSITIONING_SERVICE:I

.field public static final MOVEMENT_SERVICE:I

.field public static final MOVING_SERVICE:I

.field public static final ORIENTATION_SENSOR_SERVICE:I

.field public static final OTHER_VERSION:I = 0x2

.field public static final PEDOMETER_SERVICE:I

.field public static final PHONE_STATE_MONITOR_SERVICE:I

.field public static final POWER_NOTI_SERVICE:I

.field public static final PROPERTYGET_ACTIVITY_TRACKER_BATCH_HISTORY_DATA:I = 0x3

.field public static final PROPERTYGET_ANY_MOTION_DETECTOR_DATA:I = 0x5

.field public static final PROPERTYGET_CH_LOC_TRIGGER_CUR_STATUS:I = 0x9

.field public static final PROPERTYGET_DEVICE_PHYSICAL_CONTEXT_MONITOR_AOD_STATUS:I = 0x7

.field public static final PROPERTYGET_DEVICE_PHYSICAL_CONTEXT_MONITOR_AOD_VERSION:I = 0x8

.field public static final PROPERTYGET_EXERCISE_DATA:I = 0x0

.field public static final PROPERTYGET_PEDOMETER_HISTORY_DATA:I = 0x2

.field public static final PROPERTYGET_PHONESTATE_DATA:I = 0x1

.field public static final PROPERTYGET_STEP_LEVEL_MONITOR:I = 0x4

.field public static final PROPERTY_ABNORMAL_SHOCK_DURATION:I = 0x2d

.field public static final PROPERTY_ABNORMAL_SHOCK_STRENGTH:I = 0x2c

.field public static final PROPERTY_ABNORMAL_SHOCK_USER_ACTION:I = 0x2e

.field public static final PROPERTY_ACTIVITY_CALIBRATION_CURRENT_STATE:I = 0x5b

.field public static final PROPERTY_ACTIVITY_CALIBRATION_SPEED:I = 0x5c

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_ACTIVITY:I = 0x26

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_PERIOD:I = 0x27

.field public static final PROPERTY_ACTIVITY_TRACKER_INTTERUPT_MODE_ACTIVITY:I = 0x25

.field public static final PROPERTY_AUTOROTATION_DEVICETYPE:I = 0x8

.field public static final PROPERTY_AUTO_BRIGHTNESS_DEVICE_MODE:I = 0x40

.field public static final PROPERTY_AUTO_BRIGHTNESS_EBOOK_CONFIG_DATA:I = 0x41

.field public static final PROPERTY_CARE_GIVER_DURATION:I = 0x29

.field public static final PROPERTY_CARE_GIVER_STRENGTH:I = 0x28

.field public static final PROPERTY_CH_LOC_TRIGGER_DURATION:I = 0x5a

.field public static final PROPERTY_CH_LOC_TRIGGER_TRIGGER_TYPE:I = 0x59

.field public static final PROPERTY_DPCM_AOD_ON_OFF:I = 0x50

.field public static final PROPERTY_DPCM_SENSOR_AOD_OVER_TURN_DURATION:I = 0x54

.field public static final PROPERTY_DPCM_SENSOR_AOD_PROXI_CHECK_DURATION:I = 0x56

.field public static final PROPERTY_DPCM_SENSOR_AOD_PROXI_USE_PERIOD:I = 0x55

.field public static final PROPERTY_DPCM_SENSOR_AOD_SCENARIO_OFF:I = 0x58

.field public static final PROPERTY_DPCM_SENSOR_AOD_SCENARIO_ON:I = 0x57

.field public static final PROPERTY_DPCM_SENSOR_AOD_TIMEOUT:I = 0x53

.field public static final PROPERTY_DPCM_SENSOR_ON_OFF_BRIGHTNESS:I = 0x52

.field public static final PROPERTY_DPCM_SENSOR_ON_OFF_PROXIMITY:I = 0x51

.field public static final PROPERTY_DUAL_DISPLAY_ANGLE_OFF_ANGLE:I = 0x4d

.field public static final PROPERTY_DUAL_DISPLAY_ANGLE_ON_ANGLE:I = 0x4c

.field public static final PROPERTY_EAD_DURATION:I = 0x43

.field public static final PROPERTY_EAD_MODE:I = 0x42

.field public static final PROPERTY_ENVIRONMENT_SENSOR_INTERVAL:I = 0xd

.field public static final PROPERTY_EXERCISE_DATA_TYPE:I = 0x3f

.field public static final PROPERTY_FLAT_MOTION_FOR_TABLE_MODE:I = 0x3d

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_COMPONENT_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LIFE_LOG_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_LIFE_LOG_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_STAYING_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_STAYING_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LOCATION_ACCURACY:I = 0x1

.field public static final PROPERTY_LOCATION_HEIGHT:I = 0x3

.field public static final PROPERTY_LOCATION_WEIGHT:I = 0x2

.field public static final PROPERTY_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DISTANCE:I = 0xc

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DURATION:I = 0xa

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_MIN_DURATION:I = 0xb

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_NOMOVE_DURATION:I = 0x9

.field public static final PROPERTY_PEDOMETER_CURRENT_INFO_COLLECTION_TIME:I = 0x13

.field public static final PROPERTY_PEDOMETER_DELIVERY_COUNT:I = 0x11

.field public static final PROPERTY_PEDOMETER_EXERCISE_MODE:I = 0x3e

.field public static final PROPERTY_PEDOMETER_GENDER:I = 0x6

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x5

.field public static final PROPERTY_PEDOMETER_SF:I = 0x75

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x4

.field public static final PROPERTY_POI_CREATION_DB_SETTING:I = 0x1b

.field public static final PROPERTY_SENSORHUB_TIMER_COUNT:I = 0x1a

.field public static final PROPERTY_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_SLEEP_MONITOR_SAMPLING_INTERVAL:I = 0x2b

.field public static final PROPERTY_SLEEP_MONITOR_SENSIBILITY:I = 0x2a

.field public static final PROPERTY_SLOCATION_CURLOC_CORE_FUNC:I = 0x6c

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_CLEANUP:I = 0x74

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_FLUSH:I = 0x72

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_INJECT_LOCATION:I = 0x73

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_REQUEST_LOCATION:I = 0x71

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_START:I = 0x6e

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_STOP:I = 0x70

.field public static final PROPERTY_SLOCATION_FLP_BATCHING_CORE_UPDATE:I = 0x6f

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_ADD:I = 0x65

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_PAUSE_RESUME:I = 0x67

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_REMOVE:I = 0x66

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_SET_LOC_DATA:I = 0x69

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_START_AR:I = 0x6a

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_STOP_AR:I = 0x6b

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_UPDATE:I = 0x68

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_VERSION:I = 0x64

.field public static final PROPERTY_SLOCATION_STATUS_REMOVE:I = 0x6d

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MAXIMUM_ANGLE:I = 0x23

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MINUMUM_ANGLE:I = 0x22

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MOVING_THRS:I = 0x24

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_RETENTION_TIME:I = 0x21

.field public static final PROPERTY_STAYING_ALERT_STOP_PERIOD:I = 0x17

.field public static final PROPERTY_STAYING_ALERT_WAIT_PERIOD:I = 0x18

.field public static final PROPERTY_STEPCOUNTALERT_STEPCOUNT:I = 0x7

.field public static final PROPERTY_STEP_COUNT_TIMER_STEPCOUNT:I = 0x19

.field public static final PROPERTY_STEP_LEVEL_MONITOR_DEVICE_TYPE:I = 0x39

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_COUNT:I = 0x3c

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_END_TIME:I = 0x38

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_START_TIME:I = 0x37

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_DURATION:I = 0x3b

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_TYPE:I = 0x3a

.field public static final PROPERTY_TEMPERATURE_ALERT_HIGH_TEMPERATURE:I = 0x15

.field public static final PROPERTY_TEMPERATURE_ALERT_IS_INCLUDING:I = 0x16

.field public static final PROPERTY_TEMPERATURE_ALERT_LOW_TEMPERATURE:I = 0x14

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_WAKE_UP_VOICE_MODE:I = 0x35

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_AM:I = 0x10

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_GRAMMER:I = 0x12

.field public static final PUT_DOWN_MOTION_SERVICE:I

.field public static final RAW_BAROMETER_SENSOR_SERVICE:I

.field public static final RAW_GPS_SERVICE:I

.field public static final RAW_SATELLITE_SERVICE:I

.field public static final RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

.field public static final RAW_WPS_SERVICE:I

.field public static final REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

.field public static final REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

.field public static final REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

.field public static final REQUEST_PEDOMETER_CURRENT_INFO:I

.field public static final REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

.field public static final SENSORHUB_RESET_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.SENSORHUB_RESET"

.field public static final SENSOR_STATUS_CHECK_SERVICE:I

.field public static final SHAKE_MOTION_SERVICE:I

.field public static final SLEEP_MONITOR_SERVICE:I

.field public static final SLOCATION_SERVICE:I

.field public static final SPECIFIC_POSE_ALERT_SERVICE:I

.field public static final STAYING_ALERT_SERVICE:I

.field public static final STEP_COUNT_ALERT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_SERVICE:I

.field public static final STOP_ALERT_SERVICE:I

.field private static final TAG:Ljava/lang/String; = "CAE"

.field public static final TEMPERATURE_ALERT_SERVICE:I

.field public static final TEMPERATURE_HUMIDITY_SERVICE:I

.field public static final TEST_FLAT_MOTION_SERVICE:I

.field public static final WAKE_UP_VOICE_SERVICE:I

.field public static final WIRELESS_CHARGING_MONITOR:I

.field public static final WRIST_UP_MOTION_SERVICE:I


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private final mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mCaeMgrLooper:Landroid/os/Looper;

.field private final mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaeMgrLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOCATION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVING_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LPP_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_GPS_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_SATELLITE_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_WPS_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BEST_LOCATION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACCELEROMETER_SENSOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ORIENTATION_SENSOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MAGNETIC_SENSOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYROSCOPE_SENSOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->POWER_NOTI_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->APDR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DIRECT_CALL_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STOP_ALERT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_BAROMETER_SENSOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARE_GIVER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CARE_GIVER_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_SHOCK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_SHOCK_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_SHORT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_LONG_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WRIST_UP_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEST_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEMPERATURE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STAYING_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STAYING_ALERT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_COMPONENT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_EXTANDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SPECIFIC_POSE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLEEP_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CAPTURE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVE_TIME:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION_FOR_TABLE_MODE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARRYING_STATUS_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CARRYING_STATUS_MONITOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOTTOM_FLAT_DETECTOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOTTOM_FLAT_DETECTOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PHONE_STATE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_BRIGHTNESS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_PRESSURE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_HALL_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->HALL_SENSOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EAD:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EAD_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DUAL_DISPLAY_ANGLE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DUAL_DISPLAY_ANGLE_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WIRELESS_CHARGING_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WIRELESS_CHARGING_MONITOR:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MAIN_SCREEN_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MAIN_SCREEN_DETECTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CH_LOC_TRIGGER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CH_LOC_TRIGGER_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FREE_FALL_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FREE_FALL_DETECTION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ANY_MOTION_DETECTOR_RUNNER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ANY_MOTION_DETECTOR_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SENSOR_STATUS_CHECK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SENSOR_STATUS_CHECK_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_CALIBRATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_CALIBRATION_SERVICE:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CMD_PROCESS_FAULT_DETECTION:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_PEDOMETER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_SLEEP_MONITOR_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_TRACE:I

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_DEBUG:I

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_INFO:I

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_WARN:I

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/ContextAwareManager$1;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    const-string/jumbo v0, "context_aware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    iput-object p1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CAEMgr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaeMgrLooper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaeMgrLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method private getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->getContextInfo(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CAE"

    const-string/jumbo v3, "RemoteException in getContextInfo: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getVersion()I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->getVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final initializeAutoTest()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->initializeAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CAE"

    const-string/jumbo v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final registerWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->registerWatcher(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CAE"

    const-string/jumbo v3, "RemoteException in registerWatcher: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final resetCAService(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->resetCAService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setCALogger(ZZIZ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setCALogger(ZZIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setCAProperty(IID)Z
    .locals 5

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleTypeCode()I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIF)Z
    .locals 4

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatTypeCode()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(III)Z
    .locals 4

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIJ)Z
    .locals 5

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongTypeCode()I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayListTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/HashSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerHashSetTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIZ)Z
    .locals 4

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getBooleanTypeCode()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[B)Z
    .locals 3

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-static {p3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[C)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getCharArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[D)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[F)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[I)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[J)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setScenarioForDebugging(IILjava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v5, p1, p2, v4}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setScenarioForDebugging(II[B)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v4, "CAE"

    const-string/jumbo v5, "setScenarioForDebugging error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :cond_1
    :goto_2
    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public final setScenarioForTest(II)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setScenarioForTest(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setVersion(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final startAutoTest()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->startAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final stopAutoTest()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->stopAutoTest()V

    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CAE"

    const-string/jumbo v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final unregisterWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->unregisterWatcher(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CAE"

    const-string/jumbo v3, "RemoteException in unregisterWatcher: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
