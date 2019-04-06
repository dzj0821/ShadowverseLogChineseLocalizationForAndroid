.class final Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;
.super Ljava/lang/Object;
.source "OnSubscribeViewDetachedFromWindowFirst.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->view:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    new-instance v0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;

    iget-object v1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->view:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;-><init>(Lrx/Subscriber;Landroid/view/View;)V

    .line 35
    .local v0, "adapter":Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 36
    iget-object v1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 37
    return-void
.end method
