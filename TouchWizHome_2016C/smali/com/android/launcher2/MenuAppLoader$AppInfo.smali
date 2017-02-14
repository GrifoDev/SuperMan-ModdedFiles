.class Lcom/android/launcher2/MenuAppLoader$AppInfo;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field cell:I

.field color:I

.field component:Ljava/lang/String;

.field folderId:J

.field hidden:Z

.field id:J

.field restored:I

.field screen:I

.field serialNumber:J

.field title:Ljava/lang/String;

.field urgent:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppLoader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppLoader$AppInfo;-><init>()V

    return-void
.end method
