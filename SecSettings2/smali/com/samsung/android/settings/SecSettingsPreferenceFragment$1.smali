.class Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SecSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method
