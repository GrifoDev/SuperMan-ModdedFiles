.class public final Landroid/media/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadata$1;,
        Landroid/media/MediaMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDITOR_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.metadata.BT_FOLDER_TYPE"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_MEDIA_URI:Ljava/lang/String; = "android.media.metadata.MEDIA_URI"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_INVALID:I = -0x1

.field private static final METADATA_TYPE_LONG:I = 0x0

.field private static final METADATA_TYPE_RATING:I = 0x3

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mDescription:Landroid/media/MediaDescription;


# direct methods
.method static synthetic -get0()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaMetadata;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    aput-object v1, v0, v6

    const-string/jumbo v1, "android.media.metadata.WRITER"

    aput-object v1, v0, v7

    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ART"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.media.metadata.ART_URI"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DURATION"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.WRITER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.YEAR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.GENRE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.NUM_TRACKS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.USER_RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.MEDIA_ID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.metadata.MEDIA_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.ART"

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.RATING"

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.USER_RATING"

    const v2, 0x10000001

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.DATE"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.DURATION"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.GENRE"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.NUM_TRACKS"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.WRITER"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.media.metadata.YEAR"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/media/MediaMetadata$1;

    invoke-direct {v0}, Landroid/media/MediaMetadata$1;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/media/MediaMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getKeyFromMetadataEditorKey(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "MediaMetadata"

    const-string/jumbo v4, "Failed to retrieve a key as Bitmap."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    move-object/from16 v21, v0

    return-object v21

    :cond_0
    const-string/jumbo v21, "android.media.metadata.MEDIA_ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v21, "android.media.metadata.DISPLAY_TITLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    const/16 v21, 0x0

    aput-object v6, v18, v21

    const-string/jumbo v21, "android.media.metadata.DISPLAY_SUBTITLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v18, v22

    const-string/jumbo v21, "android.media.metadata.DISPLAY_DESCRIPTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v18, v22

    :cond_1
    const/4 v7, 0x0

    :goto_0
    sget-object v21, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    sget-object v21, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v21, v21, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object v8, v15

    :cond_2
    const/4 v7, 0x0

    :goto_1
    sget-object v21, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_3

    sget-object v21, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    aget-object v21, v21, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    :cond_3
    const/4 v13, 0x0

    const-string/jumbo v21, "android.media.metadata.MEDIA_URI"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :cond_4
    new-instance v4, Landroid/media/MediaDescription$Builder;

    invoke-direct {v4}, Landroid/media/MediaDescription$Builder;-><init>()V

    invoke-virtual {v4, v12}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    const/16 v21, 0x0

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    const/16 v21, 0x1

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    const/16 v21, 0x2

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v4, v8}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v4, v9}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v4, v13}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string/jumbo v22, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v21, "android.media.extra.BT_FOLDER_TYPE"

    const-string/jumbo v22, "android.media.metadata.BT_FOLDER_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v4, v5}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    :cond_5
    invoke-virtual {v4}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    move-object/from16 v21, v0

    return-object v21

    :cond_6
    const/16 v19, 0x0

    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    sget-object v21, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_1

    sget-object v21, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    aget-object v21, v21, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    add-int/lit8 v20, v19, 0x1

    aput-object v16, v18, v19

    move/from16 v19, v20

    :cond_7
    move v10, v11

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRating(Ljava/lang/String;)Landroid/media/Rating;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/media/Rating;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "MediaMetadata"

    const-string/jumbo v4, "Failed to retrieve a key as Rating."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
