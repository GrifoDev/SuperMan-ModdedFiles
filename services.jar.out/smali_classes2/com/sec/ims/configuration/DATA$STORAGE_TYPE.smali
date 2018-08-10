.class public Lcom/sec/ims/configuration/DATA$STORAGE_TYPE;
.super Ljava/lang/Object;
.source "DATA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/configuration/DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STORAGE_TYPE"
.end annotation


# static fields
.field public static final AUTOCONFIG_DB:I = 0x5

.field public static final CONFIG_DM:I = 0x0

.field public static final GLOBAL:I = 0x3

.field public static final SERVICE_SWITCH:I = 0x4

.field public static final SIM:I = 0x1

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
