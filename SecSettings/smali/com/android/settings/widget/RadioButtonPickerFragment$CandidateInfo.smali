.class public abstract Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
.super Ljava/lang/Object;
.source "RadioButtonPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/RadioButtonPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CandidateInfo"
.end annotation


# instance fields
.field public final enabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->enabled:Z

    return-void
.end method


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract loadIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadLabel()Ljava/lang/CharSequence;
.end method
