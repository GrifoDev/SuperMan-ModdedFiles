.class final Lcom/android/incallui/smartcall/SmartCallUtil$2;
.super Ljava/lang/Object;
.source "SmartCallUtil.java"

# interfaces
.implements Lcom/android/incallui/smartcall/SmartCallerInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcall/SmartCallUtil;->queryCallerImageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v2, "queryImageUri - onResult"

    # invokes: Lcom/android/incallui/smartcall/SmartCallUtil;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/incallui/smartcall/SmartCallUtil;->access$000(Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_2

    .line 121
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 122
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const-string v2, "queryImageUri - cursor != null"

    # invokes: Lcom/android/incallui/smartcall/SmartCallUtil;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/incallui/smartcall/SmartCallUtil;->access$000(Ljava/lang/String;)V

    .line 125
    const-string v2, "localUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "columnIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 129
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    .line 132
    :cond_0
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/smartcall/SmartCallController;->notifyListenersOfSmartImageQueryComplete()V

    .line 136
    .end local v0    # "columnIndex":I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 138
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_2
    return-void
.end method
