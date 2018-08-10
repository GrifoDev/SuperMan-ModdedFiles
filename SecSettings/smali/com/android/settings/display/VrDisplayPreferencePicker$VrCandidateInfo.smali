.class Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;
.super Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
.source "VrDisplayPreferencePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/VrDisplayPreferencePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VrCandidateInfo"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public final value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;-><init>(Z)V

    iput p2, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->value:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vr_display_pref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->label:Ljava/lang/String;

    return-object v0
.end method
