.class Lcom/samsung/android/settings/nearby/NearbyEnabler$3;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;->switchPreference(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

.field final synthetic val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$3;->val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

    iput-boolean p3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$3;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$3;->val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$3;->val$value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method
