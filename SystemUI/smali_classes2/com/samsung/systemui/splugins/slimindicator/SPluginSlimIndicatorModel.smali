.class public interface abstract Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;
.super Ljava/lang/Object;
.source "SPluginSlimIndicatorModel.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "slimindicator"
.end annotation


# static fields
.field public static final ICON_BLACKLIST_SETTING:Ljava/lang/String; = "icon_blacklist"

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x3

.field public static final VERSION:I = 0x3eb

.field public static final mIconDrawableList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIconEnableList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIsShowHomeCarrier:Z = true

.field public static final mIsShowLockCarrier:Z = true


# virtual methods
.method public abstract getIsLockCarrier()Z
.end method

.method public abstract getIsShowCarrier()Z
.end method
