.class Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$2;
.super Ljava/lang/Object;
.source "MuteAllSoundsPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    const/16 v2, 0x17d7

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method
