.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)Z

    move-result v0

    return v0
.end method
