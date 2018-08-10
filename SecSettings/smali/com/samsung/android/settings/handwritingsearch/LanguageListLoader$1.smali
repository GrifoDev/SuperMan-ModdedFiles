.class Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;
.super Ljava/lang/Object;
.source "LanguageListLoader.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

.field final synthetic val$mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;->this$0:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    iput-object p2, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;->val$mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settings)Failed to update list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;->this$0:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    iget-object v2, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;->val$mLanguageManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->-set0(Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader$1;->this$0:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-static {v1}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->-get1(Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    invoke-static {}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "settings)count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
