//
//  CContactTableViewCell.swift
//  TableView
//
//  Created by MuhammadAli on 19/01/24.
//

import UIKit

class CContactTableViewCell: UITableViewCell {
    
    var onClick: ((MContact) -> Void)?
    
    private var contact: MContact!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    init(_ model: MContact) {
        super.init(style: .default, reuseIdentifier: "CContactTableViewCell")
        self.contact = model
        initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView() {
        
        self.clearAllBackgraund()
        let topSpacing : CGFloat = 12
        let imgHeight: CGFloat = static_contact_cell_h - topSpacing
        let imageContainer = UIView(
            frame: CGRect(
                x: 16,
                y: topSpacing,
                width: imgHeight,
                height: imgHeight))
        imageContainer.layer.cornerRadius = (imgHeight) / 2
        imageContainer.backgroundColor = .white
        imageContainer.layer.shadowColor = UIColor.black.cgColor
        imageContainer.layer.shadowRadius = 4
        imageContainer.layer.shadowOpacity = 0.2
        imageContainer.layer.shadowOffset = CGSize(width: -4, height: 3)
        
        
        let imgView = UIImageView(
            frame: CGRect(
                x: 0,
                y: 0,
                width: imgHeight,
                height: imgHeight))
        imgView.layer.cornerRadius = (imgHeight) / 2
        imgView.layer.masksToBounds = true
        imgView.clipsToBounds = true
        imgView.contentMode = .scaleAspectFill
        imgView.image = UIImage(named: "MuhammadAli")
        imageContainer.addSubview(imgView)
        
        let container = UIView(
            frame: CGRect(
                x: 16 + (imgHeight / 2),
                y: topSpacing,
                width: windowWidth - (16 + (imgHeight / 2)),
                height: imgHeight))
        container.backgroundColor = .white
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowRadius = 4
        container.layer.shadowOpacity = 0.2
        container.layer.shadowOffset = CGSize(width: 0 , height: 3)
        self.contentView.addSubview(container)
        
        self.contentView.addSubview(imageContainer)
        
        let phoneLabel = UILabel(
            frame: CGRect(
                x: 16 + (imgHeight/2),
                y: 0,
                width: container.frame.width - (16 + (imgHeight / 2)),
                height: imgHeight * 0.6))
        phoneLabel.text = self.contact.phone
        phoneLabel.textColor = .darkGray
        phoneLabel.font = .systemFont(ofSize: imgHeight * 0.36)
        container.addSubview(phoneLabel)
        
        let nameLabel = UILabel(
            frame: CGRect(
                x: 16 + (imgHeight/2),
                y: phoneLabel.frame.maxY - 4,
                width: container.frame.width - (16 + (imgHeight / 2)),
                height: imgHeight * 0.4))
        nameLabel.text = self.contact.name
        nameLabel.textColor = .gray
        nameLabel.font = .systemFont(ofSize: imgHeight * 0.3)
        container.addSubview(nameLabel)
        
        let button = UIButton(frame: CGRect(x: 16, y: topSpacing, width: windowWidth - 16, height: imgHeight))
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        self.contentView.addSubview(button)
        
    }
    
    @objc func onButton(_ sender: UIButton) {
        self.onClick?(self.contact)
    }
    
}
