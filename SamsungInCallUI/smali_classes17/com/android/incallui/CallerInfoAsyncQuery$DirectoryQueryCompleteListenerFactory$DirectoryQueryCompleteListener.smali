.class Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectoryQueryCompleteListener"
.end annotation


# instance fields
.field private final mDirectoryId:J

.field final synthetic this$0:Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->this$0:Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->mDirectoryId:J

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->this$0:Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;

    iget-wide v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;->mDirectoryId:J

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    # invokes: Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->onDirectoryQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->access$500(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V

    return-void
.end method
