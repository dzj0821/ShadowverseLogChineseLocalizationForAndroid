.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

    .prologue
    .line 45
    iput-object p1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;->this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;->val$observer:Lrx/Subscriber;

    invoke-static {p1, p2, p3, p4, p5}, Lrx/android/widget/OnItemClickEvent;->create(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lrx/android/widget/OnItemClickEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
