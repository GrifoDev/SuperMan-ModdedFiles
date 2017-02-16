.class public Lcom/samsung/android/desktopmode/KnoxDockStation;
.super Ljava/lang/Object;
.source "KnoxDockStation.java"


# instance fields
.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/desktopmode/KnoxDockButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/KnoxDockStation;->buttons:Ljava/util/ArrayList;

    .line 9
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/samsung/android/desktopmode/KnoxDockButton;)V
    .locals 1
    .param p1, "b"    # Lcom/samsung/android/desktopmode/KnoxDockButton;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/desktopmode/KnoxDockStation;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/samsung/android/desktopmode/KnoxDockStation;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public deleteObserver(Lcom/samsung/android/desktopmode/KnoxDockButton;)V
    .locals 2
    .param p1, "b"    # Lcom/samsung/android/desktopmode/KnoxDockButton;

    .prologue
    .line 20
    iget-object v1, p0, Lcom/samsung/android/desktopmode/KnoxDockStation;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 21
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/samsung/android/desktopmode/KnoxDockStation;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    :cond_0
    return-void
.end method

.method public notifyObservers(B)V
    .locals 2
    .param p1, "press"    # B

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/KnoxDockStation;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/samsung/android/desktopmode/KnoxDockStation;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/KnoxDockButton;

    invoke-virtual {v1, p1}, Lcom/samsung/android/desktopmode/KnoxDockButton;->setPressed(B)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
