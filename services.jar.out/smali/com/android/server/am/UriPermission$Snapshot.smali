.class public Lcom/android/server/am/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field final persistedCreateTime:J

.field final persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method private constructor <init>(Lcom/android/server/am/UriPermission;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/am/UriPermission;->targetUserId:I

    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->targetUserId:I

    iget-object v0, p1, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iget v0, p1, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedModeFlags:I

    iget-wide v0, p1, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedCreateTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$Snapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;)V

    return-void
.end method
