.class public Lcom/sec/ims/settings/GlobalSettings$EmergencyPdnPolicy;
.super Ljava/lang/Object;
.source "GlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/GlobalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmergencyPdnPolicy"
.end annotation


# static fields
.field public static final EPDN:I = 0x0

.field public static final IMSPDN_IF_EPDG_CONNECTED:I = 0x2

.field public static final IMSPDN_IF_IPC_RAT_EPDG:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
