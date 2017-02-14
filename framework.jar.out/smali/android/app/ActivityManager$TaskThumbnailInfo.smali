.class public Landroid/app/ActivityManager$TaskThumbnailInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskThumbnailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskThumbnailInfo$1;
    }
.end annotation


# static fields
.field private static final ATTR_SCREEN_ORIENTATION:Ljava/lang/String; = "task_thumbnailinfo_screen_orientation"

.field private static final ATTR_TASK_HEIGHT:Ljava/lang/String; = "task_thumbnailinfo_task_height"

.field public static final ATTR_TASK_THUMBNAILINFO_PREFIX:Ljava/lang/String; = "task_thumbnailinfo_"

.field private static final ATTR_TASK_WIDTH:Ljava/lang/String; = "task_thumbnailinfo_task_width"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public screenOrientation:I

.field public taskHeight:I

.field public taskWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$TaskThumbnailInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 1

    iget v0, p1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    iget v0, p1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    iget v0, p1, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    return-void
.end method

.method public restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "task_thumbnailinfo_task_width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "task_thumbnailinfo_task_height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "task_thumbnailinfo_screen_orientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "task_thumbnailinfo_task_width"

    iget v1, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "task_thumbnailinfo_task_height"

    iget v1, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "task_thumbnailinfo_screen_orientation"

    iget v1, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
