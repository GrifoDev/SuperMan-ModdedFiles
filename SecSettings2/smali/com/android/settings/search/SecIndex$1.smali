.class Lcom/android/settings/search/SecIndex$1;
.super Ljava/lang/Object;
.source "SecIndex.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/SecIndex;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SecIndex;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SecIndex;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/SecIndex$1;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SecIndex$1;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v0}, Lcom/android/settings/search/SecIndex;->-wrap1(Lcom/android/settings/search/SecIndex;)V

    return-void
.end method
