.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;
.super Ljava/lang/Object;
.source "HwrLanguageManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

.field final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguageManager$OnUpdateListener;->onComplete(I)V

    goto :goto_0
.end method
