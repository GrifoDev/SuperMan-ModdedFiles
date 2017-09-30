.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$TagFlags;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$CategoryType;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ChannelType;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IPolicyColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IMomentColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IStoryTagColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ISummaryColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IEventContactColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IStoriesColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IDayAndMonthColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IMonthClusterColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IDayClusterColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IClusterColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ICategoryColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$VideoColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ImageColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ITagColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IKeyFaceColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IPersonsColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IFaceColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IUserTagsColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IWeatherColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IPOIColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ICalendarEventColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ILocationColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ISceneColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$IFilesColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface$ICommonColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.cmh"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BESTPHOTO_NAME:Ljava/lang/String; = "bestphoto"

.field public static final BEST_PHOTO_URI:Landroid/net/Uri;

.field public static final CALENDAR_EVENT_TABLE_NAME:Ljava/lang/String; = "calendarevent"

.field public static final CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

.field public static final CATEGORY_TABLE_NAME:Ljava/lang/String; = "category"

.field public static final CATEGORY_TABLE_URI:Landroid/net/Uri;

.field public static final CLOUD_IMAGE_BASE_URI:Landroid/net/Uri;

.field public static final CLOUD_SERVER_BASE_URI:Landroid/net/Uri;

.field public static final CLOUD_VIDEO_BASE_URI:Landroid/net/Uri;

.field public static final CLUSTER_TABLE_NAME:Ljava/lang/String; = "cluster"

.field public static final CLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAYCLUSTER_TABLE_NAME:Ljava/lang/String; = "daycluster"

.field public static final DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAY_MONTH_TABLE_NAME:Ljava/lang/String; = "dayMonth"

.field public static final DAY_MONTH_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_IMAGES_TABLE_NAME:Ljava/lang/String; = "detailed_imagesview"

.field public static final DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_VIDEOS_TABLE_NAME:Ljava/lang/String; = "detailed_videosview"

.field public static final DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final EVENT_CONTACT_TABLE_NAME:Ljava/lang/String; = "event_contact"

.field public static final EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

.field public static final FACES_TABLE_NAME:Ljava/lang/String; = "faces"

.field public static final FACES_TABLE_URI:Landroid/net/Uri;

.field public static final FACES_VIEW_NAME:Ljava/lang/String; = "facesview"

.field public static final FACES_VIEW_URI:Landroid/net/Uri;

.field public static final FETCH_CLOUD_THUMBNAILS:Ljava/lang/String; = "fetchCloudThumbnail"

.field public static final FILES_TABLE_NAME:Ljava/lang/String; = "files"

.field public static final FILES_TABLE_URI:Landroid/net/Uri;

.field public static final GROUP_BY:Ljava/lang/String; = "groupBy"

.field public static final HAVING:Ljava/lang/String; = "having"

.field public static final HIDE_ALBUM:Ljava/lang/String; = "hideAlbum"

.field public static final IMAGES_TABLE_NAME:Ljava/lang/String; = "images"

.field public static final IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final KEY_FACES_TABLE_NAME:Ljava/lang/String; = "key_faces"

.field public static final KEY_FACES_TABLE_URI:Landroid/net/Uri;

.field public static final LIMIT:Ljava/lang/String; = "limit"

.field public static final LOCATION_TABLE_NAME:Ljava/lang/String; = "location"

.field public static final LOCATION_TABLE_URI:Landroid/net/Uri;

.field public static final MOMENT_TABLE_NAME:Ljava/lang/String; = "moment"

.field public static final MOMENT_TABLE_URI:Landroid/net/Uri;

.field public static final MONTHCLUSTER_TABLE_NAME:Ljava/lang/String; = "monthcluster"

.field public static final MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final NOTIFY_CLOUD_THUMBNAILS:Ljava/lang/String; = "notifyCloudThumbnail"

.field public static final NOTIFY_IMAGES:Ljava/lang/String; = "notify_images"

.field public static final NOTIFY_IMAGES_URI:Landroid/net/Uri;

.field public static final NOTIFY_OPERATION_TAGUPDATE:Ljava/lang/String; = "TAG_UPDATE"

.field public static final NOTIFY_VIDEOS:Ljava/lang/String; = "notify_videos"

.field public static final NOTIFY_VIDEOS_URI:Landroid/net/Uri;

.field public static final PERSONS_TABLE_NAME:Ljava/lang/String; = "persons"

.field public static final PERSONS_TABLE_URI:Landroid/net/Uri;

.field public static final POI_BACKUP_TABLE_NAME:Ljava/lang/String; = "poi_backup"

.field public static final POI_TABLE_NAME:Ljava/lang/String; = "poi"

.field public static final POI_TABLE_URI:Landroid/net/Uri;

.field public static final POLICY_TABLE_NAME:Ljava/lang/String; = "policy"

.field public static final POLICY_TABLE_URI:Landroid/net/Uri;

.field public static final RAWQUERY:Ljava/lang/String; = "rawquery"

.field public static final RELATED_SEARCH:Ljava/lang/String; = "relatedsearchview"

.field public static final RELATED_SEARCH_URI:Landroid/net/Uri;

.field public static final SCENE_TABLE_NAME:Ljava/lang/String; = "scene"

.field public static final SCENE_TABLE_URI:Landroid/net/Uri;

.field public static final SHOT_TABLE_NAME:Ljava/lang/String; = "shotmode"

.field public static final SHOT_TABLE_URI:Landroid/net/Uri;

.field public static final SHOW_ALBUM:Ljava/lang/String; = "showAlbum"

.field public static final SMARTCROPVIEW_TABLE_NAME:Ljava/lang/String; = "smartcropview"

.field public static final SMARTCROP_VIEW_URI:Landroid/net/Uri;

.field public static final STORY_TABLE_NAME:Ljava/lang/String; = "story"

.field public static final STORY_TABLE_URI:Landroid/net/Uri;

.field public static final STORY_TAG_VIEW_TABLE_NAME:Ljava/lang/String; = "story_tag_view"

.field public static final STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

.field public static final SUMMARY_TABLE_NAME:Ljava/lang/String; = "summary"

.field public static final SUMMARY_TABLE_URI:Landroid/net/Uri;

.field public static final TABLEONE_TABLE_NAME:Ljava/lang/String; = "table1"

.field public static final TABLEONE_VIEW_URI:Landroid/net/Uri;

.field public static final TAGVIEW_TABLE_NAME:Ljava/lang/String; = "tagview"

.field public static final TAG_VIEW_URI:Landroid/net/Uri;

.field public static final TIMELINEVIEW_TABLE_NAME:Ljava/lang/String; = "timelineview"

.field public static final TIMELINE_VIEW_URI:Landroid/net/Uri;

.field public static final USERTAG_TABLE_NAME:Ljava/lang/String; = "usertag"

.field public static final USERTAG_TABLE_URI:Landroid/net/Uri;

.field public static final VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final VIDEO_TABLE_NAME:Ljava/lang/String; = "video"

.field public static final WEATHER_TABLE_NAME:Ljava/lang/String; = "weather"

.field public static final WEATHER_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "files"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usertag"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "calendarevent"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "scene"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->LOCATION_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "shotmode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->SHOT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "weather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->WEATHER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "poi"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->POI_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->CATEGORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "detailed_imagesview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "detailed_videosview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "external/faces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "internal/persons"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "moment"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->MOMENT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "story"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "summary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->SUMMARY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "monthcluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "event_contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "story_tag_view"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "cluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->CLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dayMonth"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->DAY_MONTH_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "daycluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "timelineview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->TIMELINE_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "tagview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->TAG_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "internal/key_faces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->KEY_FACES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "video"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "smartcropview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->SMARTCROP_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "table1"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->TABLEONE_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bestphoto"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->BEST_PHOTO_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "facesview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->FACES_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "relatedsearchview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->RELATED_SEARCH_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "policy"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->POLICY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "notify_images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->NOTIFY_IMAGES_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "notify_videos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->NOTIFY_VIDEOS_URI:Landroid/net/Uri;

    const-string v0, "content://0@com.sec.android.gallery3d.provider/union/image/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->CLOUD_IMAGE_BASE_URI:Landroid/net/Uri;

    const-string v0, "content://0@com.sec.android.gallery3d.provider/union/video/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->CLOUD_VIDEO_BASE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.scloud.cloudagent/data/cloudfiles/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/CMHProviderInterface;->CLOUD_SERVER_BASE_URI:Landroid/net/Uri;

    return-void
.end method
