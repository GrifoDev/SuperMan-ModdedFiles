.class final Lcom/android/incallui/util/SecCallerInfoUtils$1;
.super Ljava/lang/Object;
.source "SecCallerInfoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecCallerInfoUtils;->makeQueryAfterRemovePreviousInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$listener:Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;

.field final synthetic val$originPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# direct methods
.method constructor <init>(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecCallerInfoUtils$1;->val$call:Lcom/android/incallui/Call;

    iput-object p2, p0, Lcom/android/incallui/util/SecCallerInfoUtils$1;->val$originPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object p3, p0, Lcom/android/incallui/util/SecCallerInfoUtils$1;->val$listener:Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/util/SecCallerInfoUtils$1;->val$call:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/util/SecCallerInfoUtils$1;->val$originPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/util/SecCallerInfoUtils$1;->val$listener:Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/SecCallerInfoUtils;->access$000(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    return-void
.end method
