.class public interface abstract Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
.super Ljava/lang/Object;
.source "ClockProvider.java"

# interfaces
.implements Lcom/samsung/android/clockpack/plugins/Plugin;


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

.field public static final CATEGORY_AOD:I = 0x1

.field public static final CATEGORY_CLEAR_COVER:I = 0x4

.field public static final CATEGORY_LOCK_SCREEN:I = 0x2

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getClockGroup(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/clockpack/plugins/exception/PluginException;,
            Lcom/samsung/android/clockpack/plugins/exception/CategoryException;
        }
    .end annotation
.end method

.method public abstract getClockName(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/clockpack/plugins/exception/PluginException;,
            Lcom/samsung/android/clockpack/plugins/exception/CategoryException;
        }
    .end annotation
.end method

.method public abstract getClockView(II)Lcom/samsung/android/clockpack/plugins/clock/ClockView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/clockpack/plugins/exception/PluginException;,
            Lcom/samsung/android/clockpack/plugins/exception/NoSuchClockException;,
            Lcom/samsung/android/clockpack/plugins/exception/CategoryException;
        }
    .end annotation
.end method

.method public abstract getDefaultClockType(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/clockpack/plugins/exception/PluginException;,
            Lcom/samsung/android/clockpack/plugins/exception/CategoryException;
        }
    .end annotation
.end method

.method public abstract getExtraData(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/clockpack/plugins/exception/PluginException;,
            Lcom/samsung/android/clockpack/plugins/exception/CategoryException;
        }
    .end annotation
.end method
