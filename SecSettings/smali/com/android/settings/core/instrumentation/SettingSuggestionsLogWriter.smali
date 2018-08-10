.class public Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;
.super Ljava/lang/Object;
.source "SettingSuggestionsLogWriter.java"

# interfaces
.implements Lcom/android/settings/core/instrumentation/LogWriter;


# instance fields
.field private mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method

.method public varargs action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/suggestions/EventStore;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/suggestions/EventStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    const-string/jumbo v1, "shown"

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/dashboard/suggestions/EventStore;->writeEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    const-string/jumbo v1, "dismissed"

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/dashboard/suggestions/EventStore;->writeEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    const-string/jumbo v1, "clicked"

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/dashboard/suggestions/EventStore;->writeEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x180
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 0

    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method
