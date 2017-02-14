.class final Lcom/android/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;
.super Landroid/database/ContentObserver;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserDictionaryContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/DynamicIndexableContentMonitor;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/DynamicIndexableContentMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;->this$0:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;->this$0:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-static {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->-get0(Lcom/android/settings/search/DynamicIndexableContentMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v0

    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method
