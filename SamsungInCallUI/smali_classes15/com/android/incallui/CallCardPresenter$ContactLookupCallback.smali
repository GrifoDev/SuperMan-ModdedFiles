.class public Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final mCallCardPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/CallCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPrimary:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/CallCardPresenter;Z)V
    .locals 1
    .param p1, "callCardPresenter"    # Lcom/android/incallui/CallCardPresenter;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean p2, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    .line 148
    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 153
    .local v0, "presenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 154
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    # invokes: Lcom/android/incallui/CallCardPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    invoke-static {v0, p1, p2, v1}, Lcom/android/incallui/CallCardPresenter;->access$000(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 169
    .local v0, "presenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 170
    # invokes: Lcom/android/incallui/CallCardPresenter;->onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    invoke-static {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 161
    .local v0, "presenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 162
    # invokes: Lcom/android/incallui/CallCardPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    invoke-static {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->access$100(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 164
    :cond_0
    return-void
.end method
