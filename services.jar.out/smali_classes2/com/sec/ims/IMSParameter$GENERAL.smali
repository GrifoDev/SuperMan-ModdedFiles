.class public Lcom/sec/ims/IMSParameter$GENERAL;
.super Ljava/lang/Object;
.source "IMSParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GENERAL"
.end annotation


# static fields
.field public static final APCS_INFO:Ljava/lang/String; = "apcsinfo"

.field public static final CONNECTION_STATE:Ljava/lang/String; = "connectionState"

.field public static final DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final EPDG_ERROR_CODE:Ljava/lang/String; = "epdgerrorcode"

.field public static final EPDG_HO_DIRECTION:Ljava/lang/String; = "epdghandoverdirection"

.field public static final EXPIRY_TIME:Ljava/lang/String; = "expirytime"

.field public static final NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "networktype"

.field public static final NEW_NETWORK_TYPE:Ljava/lang/String; = "newnetworktype"

.field public static final OLD_NETWORK_TYPE:Ljava/lang/String; = "oldnetworktype"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REGISTRATION_INFO:Ljava/lang/String; = "registrationinfo"

.field public static final SETTINGS_VALUE:Ljava/lang/String; = "settingsvalue"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
