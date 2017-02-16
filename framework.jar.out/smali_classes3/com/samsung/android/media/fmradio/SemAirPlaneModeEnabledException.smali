.class public Lcom/samsung/android/media/fmradio/SemAirPlaneModeEnabledException;
.super Lcom/samsung/android/media/fmradio/SemFmPlayerException;
.source "SemAirPlaneModeEnabledException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/fmradio/SemFmPlayerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method
