.class public final Lcom/android/server/pm/PermissionsState$PermissionState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/PermissionsState$PermissionState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    iget v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGranted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method
