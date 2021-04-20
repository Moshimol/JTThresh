//
//  UIThresh+UITableView.m
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import "UIThresh+UITableView.h"

@implementation UIThresh (UITableView)

- (UIThresh * _Nonnull (^)(id _Nonnull, id _Nonnull))delegate {
    return ^UIThresh *(id delegate, id dataSource){
        UITableView *tableView = (UITableView *)self.thresh_id;
        tableView.delegate = delegate;
        tableView.dataSource = dataSource;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))hidedividerline {
    return ^UIThresh *(BOOL hidedividerline) {
        UITableView *tableView = (UITableView *)self.thresh_id;
        if (hidedividerline) {
            tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        }
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))estimate_height {
    return ^UIThresh *(BOOL estimate_height) {
        UITableView *tableView = (UITableView *)self.thresh_id;
        if (!estimate_height) {
            tableView.estimatedRowHeight = 0.0;
            tableView.estimatedSectionHeaderHeight = 0.0;
            tableView.estimatedSectionFooterHeight = 0.0;
        }
        return self;
    };
}

- (UIThresh * _Nonnull (^)(CGFloat))rowHeight {
    return ^UIThresh *(CGFloat rowHeight) {
        UITableView *tableView = (UITableView *)self.thresh_id;
        tableView.rowHeight = rowHeight;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(CGFloat))sectionHeaderHeight {
    return ^UIThresh *(CGFloat sectionHeaderHeight) {
        UITableView *tableView = (UITableView *)self.thresh_id;
        tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(CGFloat))sectionFooterHeight {
    return ^UIThresh *(CGFloat sectionFooterHeight) {
        UITableView *tableView = (UITableView *)self.thresh_id;
        tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}

@end
