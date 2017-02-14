.class public Lcom/android/launcher2/IconInfo;
.super Ljava/lang/Object;
.source "IconInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/IconInfo$HotSeat;,
        Lcom/android/launcher2/IconInfo$Menu;,
        Lcom/android/launcher2/IconInfo$Home;,
        Lcom/android/launcher2/IconInfo$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/IconInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/IconInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/IconInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method
