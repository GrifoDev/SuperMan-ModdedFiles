.class Lcom/android/server/am/BinderTransaction$1;
.super Ljava/lang/Thread;
.source "BinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BinderTransaction;->getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BinderTransaction;

.field final synthetic val$startPid:I

.field final synthetic val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iput-object p3, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iput p4, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v4, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget v6, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-static {v5, v6}, Lcom/android/server/am/BinderTransaction;->-wrap4(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget-object v5, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v5, v5, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-static {v4, v0, v3, v1, v5}, Lcom/android/server/am/BinderTransaction;->-wrap0(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v4, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/BinderTransaction;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/BinderTransaction;->-wrap2(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget-object v5, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-static {v4, v1, v5}, Lcom/android/server/am/BinderTransaction;->-wrap1(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v4, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    invoke-static {}, Lcom/android/server/am/BinderTransaction;->-get1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/BinderTransaction;->-wrap2(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v4, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget v6, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-static {v5, v6}, Lcom/android/server/am/BinderTransaction;->-wrap3(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
