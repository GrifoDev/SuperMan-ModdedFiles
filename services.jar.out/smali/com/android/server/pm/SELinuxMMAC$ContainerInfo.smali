.class Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerInfo"
.end annotation


# instance fields
.field accessInfo:I

.field allowCategory:Ljava/lang/String;

.field allowContainerCategory:Ljava/lang/String;

.field bbcallowCategory:Ljava/lang/String;

.field bbccategory:I

.field bbcseInfo:Ljava/lang/String;

.field bluetoothuserid:Ljava/lang/String;

.field bluetoothuseridBL:Ljava/lang/String;

.field category:I

.field destPkgName:[Ljava/lang/String;

.field sdcarduserid:Ljava/lang/String;

.field sdcarduseridBL:Ljava/lang/String;

.field seInfo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v1, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    iput v1, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    return-void
.end method
