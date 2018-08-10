.class Lcom/android/server/EnterprisePartitionManager$EpmResponseCode;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EnterprisePartitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EpmResponseCode"
.end annotation


# static fields
.field static final CommandFailed:I = 0x119

.field static final CommandNoPermission:I = 0x1f6

.field static final CommandOkay:I = 0xc8

.field static final CommandOngoing:I = 0xc9

.field static final CommandParameterError:I = 0x1f5

.field static final CommandSyntaxError:I = 0x1f4

.field static final OperationFailed:I = 0x190

.field static final UnsolicitedInformation:I = 0x258


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
