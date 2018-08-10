.class final Lcom/android/server/LocationManagerService$Identity;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Identity"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field final mUid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iput p2, p0, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iput-object p3, p0, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    return-void
.end method
