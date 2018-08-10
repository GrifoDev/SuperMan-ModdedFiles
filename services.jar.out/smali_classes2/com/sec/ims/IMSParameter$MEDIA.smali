.class public Lcom/sec/ims/IMSParameter$MEDIA;
.super Ljava/lang/Object;
.source "IMSParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MEDIA"
.end annotation


# static fields
.field public static final CAMERA_ID:Ljava/lang/String; = "cameraid"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final IS_NEAR_END:Ljava/lang/String; = "isnearend"

.field public static final SESSION_ID:Ljava/lang/String; = "media_sessionid"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final VIDEO_ORIENTATION:Ljava/lang/String; = "videoorientation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
