.class public Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public appid:Ljava/lang/String;

.field public pkg:Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$PkgInfo;

.field public resources:[Ljava/lang/String;

.field public services:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$ServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
