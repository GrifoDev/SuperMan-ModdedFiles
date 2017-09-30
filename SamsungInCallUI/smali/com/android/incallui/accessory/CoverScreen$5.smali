.class Lcom/android/incallui/accessory/CoverScreen$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    iput-object p2, p0, Lcom/android/incallui/accessory/CoverScreen$5;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const-string v0, "CoverScreen"

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

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0, p2}, Lcom/android/incallui/accessory/CoverScreen;->access$602(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen$5;->val$call:Lcom/android/incallui/Call;

    invoke-static {v0, v1, p2}, Lcom/android/incallui/accessory/CoverScreen;->access$700(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public onGifImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const-string v0, "CoverScreen"

    const-string v1, "onImageLoadComplete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$600(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$600(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$600(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iget-boolean v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen$5;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v1}, Lcom/android/incallui/accessory/CoverScreen;->access$600(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->access$800(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method
