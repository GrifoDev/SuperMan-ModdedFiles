.class public Landroid/hardware/scontext/SContextAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SContextAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v0

    return v0
.end method
