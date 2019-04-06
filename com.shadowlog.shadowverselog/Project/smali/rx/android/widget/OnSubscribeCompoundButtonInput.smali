.class Lrx/android/widget/OnSubscribeCompoundButtonInput;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;,
        Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lrx/android/view/OnCheckedChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final button:Landroid/widget/CompoundButton;

.field private final emitInitialValue:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "emitInitialValue"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p2, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->emitInitialValue:Z

    .line 37
    iput-object p1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lrx/android/widget/OnSubscribeCompoundButtonInput;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lrx/android/widget/OnSubscribeCompoundButtonInput;

    .prologue
    .line 31
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/widget/OnSubscribeCompoundButtonInput;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/android/view/OnCheckedChangeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/view/OnCheckedChangeEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 43
    iget-object v3, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    invoke-static {v3}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->getFromViewOrCreate(Landroid/widget/CompoundButton;)Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    move-result-object v0

    .line 45
    .local v0, "composite":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    new-instance v1, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;

    invoke-direct {v1, p0, p1}, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;-><init>(Lrx/android/widget/OnSubscribeCompoundButtonInput;Lrx/Subscriber;)V

    .line 52
    .local v1, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v3, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;

    invoke-direct {v3, p0, v0, v1}, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;-><init>(Lrx/android/widget/OnSubscribeCompoundButtonInput;Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {v3}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 59
    .local v2, "subscription":Lrx/Subscription;
    iget-boolean v3, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->emitInitialValue:Z

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    invoke-static {v3}, Lrx/android/view/OnCheckedChangeEvent;->create(Landroid/widget/CompoundButton;)Lrx/android/view/OnCheckedChangeEvent;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 63
    :cond_0
    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->addOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z

    .line 64
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 65
    return-void
.end method
