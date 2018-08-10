.class public Lcom/android/server/EnterprisePartitionManager$EpmMigrationCmd;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EnterprisePartitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpmMigrationCmd"
.end annotation


# static fields
.field public static final EPM_CMD_MIGRATION_SDPDB:Ljava/lang/String; = "sdp_db"

.field public static final EPM_CMD_MIGRATION_SET_ENGINE_ID:Ljava/lang/String; = "set_engine_id"

.field public static final EPM_CMD_MIGRATION_SET_SENSITIVE_FROM_DB1:Ljava/lang/String; = "set_sensitive_from_db1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
