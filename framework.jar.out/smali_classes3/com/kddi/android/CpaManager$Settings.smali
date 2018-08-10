.class public Lcom/kddi/android/CpaManager$Settings;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/CpaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public dns1:Ljava/lang/String;

.field public dns2:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public proxyHost:Ljava/lang/String;

.field public proxyPort:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
