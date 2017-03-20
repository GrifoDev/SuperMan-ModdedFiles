.class public abstract Lcom/android/incallui/ContactUtils;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactUtils$Listener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/incallui/ContactUtils;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/incalluibind/ObjectFactory;->getContactUtilsInstance(Landroid/content/Context;)Lcom/android/incallui/ContactUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract retrieveContactInteractionsFromLookupKey(Ljava/lang/String;Lcom/android/incallui/ContactUtils$Listener;)Z
.end method
