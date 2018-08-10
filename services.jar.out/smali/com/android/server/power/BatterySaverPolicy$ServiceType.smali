.class public interface abstract annotation Lcom/android/server/power/BatterySaverPolicy$ServiceType;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/IntDef;
    value = {
        0x1L,
        0x2L,
        0x3L,
        0x4L,
        0x5L,
        0x6L,
        0x7L,
        0x8L,
        0x9L,
        0xaL
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ServiceType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ANIMATION:I = 0x3

.field public static final BATTERY_STATS:I = 0x9

.field public static final DATA_SAVER:I = 0xa

.field public static final FULL_BACKUP:I = 0x4

.field public static final GPS:I = 0x1

.field public static final KEYVALUE_BACKUP:I = 0x5

.field public static final NETWORK_FIREWALL:I = 0x6

.field public static final NULL:I = 0x0

.field public static final SCREEN_BRIGHTNESS:I = 0x7

.field public static final SOUND:I = 0x8

.field public static final VIBRATION:I = 0x2
