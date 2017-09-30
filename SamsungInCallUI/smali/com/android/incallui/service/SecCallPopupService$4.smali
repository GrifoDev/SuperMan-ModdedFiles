.class Lcom/android/incallui/service/SecCallPopupService$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupService;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupService;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iput-object p2, p0, Lcom/android/incallui/service/SecCallPopupService$4;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactInfoComplete - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/SecCallPopupService;->access$400(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iput-object p2, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$500(Lcom/android/incallui/service/SecCallPopupService;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$4;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p2}, Lcom/android/incallui/service/SecCallPopupContainer;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForShowIfNecessary()V

    return-void
.end method

.method public onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public onGifImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    const-string v1, "onGifImageLoadComplete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/SecCallPopupService;->access$400(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryGifImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForShowIfNecessary()V

    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    const-string v1, "onImageLoadComplete"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/SecCallPopupService;->access$400(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateLayout(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForShowIfNecessary()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    const-string v1, "onImageLoadComplete - else"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/SecCallPopupService;->access$400(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$4;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->upgradeGradientColor(Z)V

    goto :goto_0
.end method
