.class public Lcom/gsma/services/rcs/Intents$Service;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field public static final ACTION_GET_ACTIVATION_MODE:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_ACTIVATION_MODE"

.field public static final ACTION_GET_ACTIVATION_MODE_CHANGEABLE:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_ACTIVATION_MODE_CHANGEABLE"

.field public static final ACTION_GET_COMPATIBILITY:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_COMPATIBILITY"

.field public static final ACTION_GET_SERVICE_STARTING_STATE:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_SERVICE_STARTING_STATE"

.field public static final ACTION_SERVICE_GET_STATUS:Ljava/lang/String; = "com.gsma.services.rcs.service.action.GET_STATUS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SET_ACTIVATION_MODE:Ljava/lang/String; = "com.gsma.services.rcs.action.SET_ACTIVATION_MODE"

.field public static final ACTION_VIEW_SETTINGS:Ljava/lang/String; = "com.gsma.services.rcs.action.VIEW_SETTINGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_GET_ACTIVATION_MODE:Ljava/lang/String; = "get_activation_mode"

.field public static final EXTRA_GET_ACTIVATION_MODE_CHANGEABLE:Ljava/lang/String; = "get_activation_mode_changeable"

.field public static final EXTRA_GET_COMPATIBILITY_CODENAME:Ljava/lang/String; = "get_compatibility_codename"

.field public static final EXTRA_GET_COMPATIBILITY_INCREMENT:Ljava/lang/String; = "get_compatibility_increment"

.field public static final EXTRA_GET_COMPATIBILITY_RESPONSE:Ljava/lang/String; = "get_compatibility_response"

.field public static final EXTRA_GET_COMPATIBILITY_SERVICE:Ljava/lang/String; = "get_compatibility_service"

.field public static final EXTRA_GET_COMPATIBILITY_VERSION:Ljava/lang/String; = "get_compatibility_version"

.field public static final EXTRA_GET_SERVICE_STARTING_STATE:Ljava/lang/String; = "get_service_starting_state"

.field public static final EXTRA_SET_ACTIVATION_MODE:Ljava/lang/String; = "set_activation_mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
