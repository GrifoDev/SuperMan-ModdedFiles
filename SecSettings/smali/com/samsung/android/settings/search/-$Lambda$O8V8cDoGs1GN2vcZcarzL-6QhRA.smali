.class final synthetic Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/search/SearchResultsAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/search2/InlineSwitchPayload;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->lambda$-com_samsung_android_settings_search_SearchResultsAdapter_12046(Lcom/android/settings/search2/InlineSwitchPayload;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;->$m$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
