.class Lcom/android/settings/utils/ManagedServiceSettings$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/ManagedServiceSettings;->updateList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$2;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$2;->val$cn:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings$2;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v2, p0, Lcom/android/settings/utils/ManagedServiceSettings$2;->val$cn:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings$2;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
