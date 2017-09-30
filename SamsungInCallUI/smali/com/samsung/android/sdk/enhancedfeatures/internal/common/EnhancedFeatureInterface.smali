.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;
.super Ljava/lang/Object;


# static fields
.field public static final EnhacedAccount:I = 0x4

.field public static final EnhancedChat:I = 0x6

.field public static final EnhancedGroup:I = 0x7

.field public static final EnhancedProfile:I = 0x0

.field public static final EnhancedShare:I = 0x2

.field public static final EnhancedShop:I = 0x3

.field public static final EnhancedSocial:I = 0xb

.field public static final GCM_PUSH:I = 0x1

.field public static final ORS_SERVERID:I = 0xa

.field public static final SPP_PUSH:I


# virtual methods
.method public abstract onDeregister()V
.end method

.method public abstract onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
.end method

.method public abstract onRegister()V
.end method
