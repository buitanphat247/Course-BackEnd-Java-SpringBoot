package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.repository.ProductRepository;

@Service
public class ProductService {

    private final ProductRepository productRepository;
    private final FileStoreService fileStoreService;

    public ProductService(ProductRepository productRepository, FileStoreService fileStoreService) {
        this.productRepository = productRepository;
        this.fileStoreService = fileStoreService;
    }

    public void createNewProduct(Product data, MultipartFile productFile) {
        String fileName = this.fileStoreService.storeFile(productFile);
        if (fileStoreService.hasExtension(fileName)) {
            data.setImage(fileName);
        }
        this.productRepository.save(data);
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public Product getDetail(long id) {
        return this.productRepository.findById(id).get();
    }
}
