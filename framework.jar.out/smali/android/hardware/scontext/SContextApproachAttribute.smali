.class public Landroid/hardware/scontext/SContextApproachAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextApproachAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextApproachAttribute"


# instance fields
.field private mUserID:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextApproachAttribute;->setAttribute()V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "userID"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    .line 51
    iput p1, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    .line 52
    invoke-direct {p0}, Landroid/hardware/scontext/SContextApproachAttribute;->setAttribute()V

    .line 50
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "UserID"

    iget v2, p0, Landroid/hardware/scontext/SContextApproachAttribute;->mUserID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 61
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
