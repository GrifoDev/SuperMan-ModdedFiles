.class public abstract Lcom/android/incallui/ContactUtils;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/ContactUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactUtils;
    .locals 1

    invoke-static {p0}, Lcom/android/a/a;->c(Landroid/content/Context;)Lcom/android/incallui/ContactUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract retrieveContactInteractionsFromLookupKey(Ljava/lang/String;Lcom/android/incallui/ContactUtils$Listener;)Z
.end method
